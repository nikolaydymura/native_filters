package nd.nativefilters;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.net.Uri;
import android.util.Log;

import com.daasuu.gpuv.composer.FillMode;
import com.daasuu.gpuv.composer.GPUMp4Composer;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.daasuu.gpuv.egl.filter.GlFilterGroup;
import com.daasuu.gpuv.egl.filter.GlLookUpTableFilter;
import com.daasuu.gpuv.egl.filter.GlMonochromeFilter;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import jp.co.cyberagent.android.gpuimage.GPUImage;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilterGroup;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageLookupFilter;

public class NativeFilter implements MethodChannel.MethodCallHandler {
    @Deprecated
    private PluginRegistry.Registrar registrar;
    private FlutterPlugin.FlutterPluginBinding binding;
    private final MethodChannel channel;
    private GPUImageFilterGroup filterGroup;
    private GlFilterGroup glFilterGroup;
    private List<GlFilter> glFilters = new ArrayList<>();
    private File inputFile;
    private Bitmap inputBitmap;

    NativeFilter(FlutterPlugin.FlutterPluginBinding binding, int index) {
        this.binding = binding;
        this.channel = new MethodChannel(binding.getBinaryMessenger(), "GPUFilter-" + index);
        this.channel.setMethodCallHandler(this);
    }

    @Deprecated
    NativeFilter(PluginRegistry.Registrar registrar, int index) {
        this.registrar = registrar;
        this.channel = new MethodChannel(registrar.messenger(), "GPUFilter-" + index);
        this.channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("addFilter")) {
            try {
                String name = (String) call.arguments;
                if (name.startsWith("GPUImage")) {
                    Class<?> filterClass = Class.forName("jp.co.cyberagent.android.gpuimage.filter." + name);
                    GPUImageFilter filter = (GPUImageFilter) filterClass.newInstance();
                    if (filterGroup == null) {
                        filterGroup = new GPUImageFilterGroup();
                    }
                    int index = filterGroup.getFilters().size();
                    filterGroup.addFilter(filter);
                    result.success(index);
                } else if (name.startsWith("Gl")) {
                    Class<?> filterClass = Class.forName("com.daasuu.gpuv.egl.filter." + name);
                    if (name.equalsIgnoreCase("GlLookUpTableFilter")) {
                        result.success(0);
                    } else {
                        GlFilter filter = (GlFilter) filterClass.newInstance();
                        if (glFilterGroup == null) {
                            glFilters.add(filter);
                            glFilterGroup = new GlFilterGroup(glFilters);
                            result.success(0);
                        } else {
                            int index = glFilters.size();
                            glFilters.add(filter);
                            glFilterGroup = new GlFilterGroup(filter);
                            result.success(index);
                        }
                    }
                } else {
                    result.error(call.method + " failed", "Not found", null);
                }
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("removeFilter")) {
            try {
                int index = (int) call.arguments;
                if (filterGroup != null) {
                    List<GPUImageFilter> filters = filterGroup.getFilters();
                    GPUImageFilter filter = filters.remove(index);
                    filter.destroy();
                    result.success(null);
                } else if (glFilterGroup != null) {
                    GlFilter filter = glFilters.remove(index);
                    filter.release();
                    glFilterGroup = new GlFilterGroup(glFilters);
                    result.success(null);
                } else {
                    result.success(null);
                }
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("getFilter")) {
            int index = (int) call.arguments;
            try {
                if (filterGroup != null) {
                    List<GPUImageFilter> filters = filterGroup.getFilters();
                    GPUImageFilter filter = filters.get(index);
                    result.success(filter.getClass().getSimpleName());
                } else if (glFilterGroup != null) {
                    GlFilter filter = glFilters.get(index);
                    result.success(filter.getClass().getSimpleName());
                } else {
                    result.error(call.method + " failed", null, null);
                }
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("getFiltersCount")) {
            try {
                if (filterGroup != null) {
                    result.success(filterGroup.getFilters().size());
                } else if (glFilterGroup != null) {
                    result.success(glFilters.size());
                } else {
                    result.error(call.method + " failed", null, null);
                }
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("setImageAssetSource") || call.method.equals("setVideoAssetSource")) {
            try {
                String name = (String) call.arguments;
                final String asset;
                final InputStream stream;
                if (registrar != null) {
                    asset = registrar.lookupKeyForAsset(name);
                    stream = registrar.context()
                            .getAssets().open(asset);
                } else {
                    asset = binding.getFlutterAssets().getAssetFilePathByName(name);
                    stream = binding.getApplicationContext()
                            .getAssets().open(asset);
                }
                if (call.method.equals("setImageAssetSource")) {
                    inputBitmap = BitmapFactory.decodeStream(stream);
                    inputFile = null;
                } else {
                    if (registrar != null) {
                        inputFile = new File(registrar.context().getFilesDir(), "tempVideo.mp4");
                    } else {
                        inputFile= new File(binding.getApplicationContext().getFilesDir(), "tempVideo.mp4");
                    }

                    FileOutputStream os = null;
                    try {
                        os = new FileOutputStream(inputFile);
                        byte[] buffer = new byte[1024];
                        int length;
                        while ((length = stream.read(buffer)) > 0) {
                            os.write(buffer, 0, length);
                        }
                    } finally {
                        stream.close();
                        os.close();
                    }
                    inputBitmap = null;
                }
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("setImageFileSource") || call.method.equals("setVideoFileSource")) {
            try {
                String path = (String) call.arguments;

                inputFile = new File(path);
                inputBitmap = null;
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("setImageDataSource")) {
            try {
                byte[] data = (byte[]) call.arguments;

                inputFile = null;
                inputBitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("exportData")) {
            try {
                GPUImage gpuImage = new GPUImage(binding.getApplicationContext());
                gpuImage.setFilter(filterGroup);
                if (inputFile != null) {
                    gpuImage.setImage(inputFile);
                }
                if (inputBitmap != null) {
                    gpuImage.setImage(inputBitmap);
                }
                Bitmap decoded = gpuImage.getBitmapWithFilterApplied();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                if (inputFile != null) {
                    if (inputFile.getName().endsWith(".png")) {
                        decoded.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                    } else {
                        decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                    }
                } else {
                    decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                }
                result.success(outputStream.toByteArray());
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("exportImage")) {
            try {
                String path = (String) call.arguments;
                GPUImage gpuImage = new GPUImage(binding.getApplicationContext());
                gpuImage.setFilter(filterGroup);
                if (inputFile != null) {
                    gpuImage.setImage(inputFile);
                }
                if (inputBitmap != null) {
                    gpuImage.setImage(inputBitmap);
                }
                Bitmap decoded = gpuImage.getBitmapWithFilterApplied();
                FileOutputStream outputStream = new FileOutputStream(new File(path));
                if (path.endsWith(".png")) {
                    decoded.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                } else {
                    decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                }
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("exportVideo")) {
            String path = (String) call.arguments;
            new GPUMp4Composer(inputFile.getAbsolutePath(), path)
                    .size(1280, 720)
                    .filter(glFilterGroup)
                    .listener(new GPUMp4Composer.Listener() {
                        @Override
                        public void onProgress(double progress) {
                            Log.d(NativeFilter.class.getSimpleName(), "onProgress = " + progress);
                        }

                        @Override
                        public void onCompleted() {
                            result.success(null);
                        }

                        @Override
                        public void onCanceled() {
                            result.error(call.method + " canceled", null, null);
                        }

                        @Override
                        public void onFailed(Exception e) {
                            result.error(call.method + " failed", null, e);
                        }
                    })
                    .start();
        } else if (call.method.startsWith("setValue")) {
            try {
                ArrayList args = (ArrayList) call.arguments;
                int index = (int) args.get(0);
                String methodName = (String) args.get(1);
                Object argument = args.get(2);
                if (methodName.equalsIgnoreCase("setInputCubeData")) {
                    String name = (String) argument;
                    final InputStream stream;
                    if (registrar != null) {
                        final String asset = registrar.lookupKeyForAsset(name);
                        stream = registrar.context()
                                .getAssets().open(asset);
                    } else {
                        final String asset = binding.getFlutterAssets().getAssetFilePathByName(name);
                        stream = binding.getApplicationContext()
                                .getAssets().open(asset);
                    }
                    final Bitmap lutBitmap = BitmapFactory.decodeStream(stream);

                    glFilterGroup = new GlFilterGroup(new GlLookUpTableFilter(lutBitmap));
                    result.success(null);
                    return;
                }
                List<GPUImageFilter> filters = filterGroup.getFilters();
                GPUImageFilter filter = filters.get(index);
                Method method = null;
                for (Method m : filter.getClass().getDeclaredMethods()) {
                    if (methodName.equalsIgnoreCase(m.getName())) {
                        method = m;
                        break;
                    }
                }
                Class<?> type = method.getParameterTypes()[0];
                if (type == float.class) {
                    float value = ((Double) argument).floatValue();
                    method.invoke(filter, value);
                }
                if (type == int.class) {
                    int value = ((Double) argument).intValue();
                    method.invoke(filter, value);
                }
                if (type == boolean.class) {
                    boolean value = (Boolean) argument;
                    method.invoke(filter, value);
                }
                if (type == float[].class) {
                    Double[] arg = ((Double[]) argument);
                    float[] value = new float[arg.length];
                    for (int i = 0; i < arg.length; i++) {
                        value[i] = arg[i].floatValue();
                    }
                    method.invoke(filter, new Object[]{value});
                }
                if (type == PointF.class) {
                    Double[] arg = ((Double[]) argument);
                    PointF value = new PointF(arg[0].floatValue(), arg[1].floatValue());
                    method.invoke(filter, value);
                }
                if (type == PointF[].class) {
                    Double[] arg = ((Double[]) argument);
                    PointF[] value = new PointF[arg.length / 2];
                    for (int i = 0, j = 0; i < arg.length; i += 2, j++) {
                        value[j] = new PointF(arg[i].floatValue(), arg[i + 1].floatValue());
                    }
                    method.invoke(filter, new Object[]{value});
                }
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else {
            result.notImplemented();
        }
    }


    void destroy() {
        if (filterGroup != null) {
            filterGroup.destroy();
            filterGroup = null;
        }
        if (glFilterGroup != null) {
            glFilterGroup.release();
            glFilterGroup = null;
            glFilters.clear();
        }
    }
}
