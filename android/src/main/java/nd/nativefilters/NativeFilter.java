package nd.nativefilters;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import jp.co.cyberagent.android.gpuimage.GPUImage;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilterGroup;

public class NativeFilter implements MethodChannel.MethodCallHandler {
    @Deprecated
    private PluginRegistry.Registrar registrar;
    private FlutterPlugin.FlutterPluginBinding binding;
    private final MethodChannel channel;
    private GPUImageFilterGroup filterGroup;
    private File inputFile;
    private Bitmap inputBitmap;

    NativeFilter(FlutterPlugin.FlutterPluginBinding binding, int index) {
        this.binding = binding;
        this.channel = new MethodChannel(binding.getBinaryMessenger(), "GPUImageFilter-" + index);
        this.channel.setMethodCallHandler(this);
    }

    @Deprecated
    NativeFilter(PluginRegistry.Registrar registrar, int index) {
        this.registrar = registrar;
        this.channel = new MethodChannel(registrar.messenger(), "GPUImageFilter-" + index);
        this.channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("addFilter")) {
            try {
                String name = (String) call.arguments;
                Class<?> filterClass = Class.forName("jp.co.cyberagent.android.gpuimage.filter." + name);
                GPUImageFilter filter = (GPUImageFilter) filterClass.newInstance();
                if (filterGroup == null) {
                    filterGroup = new GPUImageFilterGroup();
                }
                int index = filterGroup.getFilters().size();
                filterGroup.addFilter(filter);
                result.success(index);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("removeFilter")) {
            try {
                int index = (int) call.arguments;
                List<GPUImageFilter> filters = filterGroup.getFilters();
                GPUImageFilter filter = filters.remove(index);
                filter.destroy();
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("getFilter")) {
            try {
                int index = (int) call.arguments;
                List<GPUImageFilter> filters = filterGroup.getFilters();
                GPUImageFilter filter = filters.get(index);
                result.success(filter.getClass().getSimpleName());
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("getFiltersCount")) {
            try {
                result.success(filterGroup.getFilters().size());
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("setImageAssetSource")) {
            try {
                String name = (String) call.arguments;
                InputStream stream = null;
                if (registrar != null) {
                    String asset = registrar.lookupKeyForAsset(name);
                    stream = registrar.context()
                            .getAssets().open(asset);
                } else {
                    String asset = binding.getFlutterAssets().getAssetFilePathByName(name);
                    stream = binding.getApplicationContext()
                            .getAssets().open(asset);

                }
                inputFile = null;
                inputBitmap = BitmapFactory.decodeStream(stream);
                result.success(null);
            } catch (Exception e) {
                Log.e(NativeFilter.class.getSimpleName(), call.method, e);
                result.error(call.method + " failed", null, e);
            }
        } else if (call.method.equals("setImageFileSource")) {
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
        } else {
            result.notImplemented();
        }
    }


    void destroy() {
        if (filterGroup != null) {
            filterGroup.destroy();
            filterGroup = null;
        }
    }
}
