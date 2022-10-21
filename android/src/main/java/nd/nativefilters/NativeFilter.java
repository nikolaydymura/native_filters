package nd.nativefilters;

import static android.opengl.GLES20.GL_COLOR_BUFFER_BIT;
import static android.opengl.GLES20.GL_FRAMEBUFFER;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.opengl.GLES20;
import android.util.Log;
import android.util.Pair;

import com.daasuu.gpuv.egl.GlFramebufferObject;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.daasuu.gpuv.egl.filter.GlLookUpTableFilter;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilterGroup;

public class NativeFilter implements MethodChannel.MethodCallHandler {
    private FlutterPlugin.FlutterPluginBinding binding;
    private final MethodChannel channel;
    public GPUImageFilterGroup filterGroup;
    public GlFilterGroup glFilterGroup;
    public File inputFile;
    public Bitmap inputBitmap;

    NativeFilter(FlutterPlugin.FlutterPluginBinding binding, int index) {
        this.binding = binding;
        this.channel = new MethodChannel(binding.getBinaryMessenger(), "Filter-" + index);
        this.channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
         if (call.method.startsWith("setValue")) {
            try {
                ArrayList args = (ArrayList) call.arguments;
                int index = (int) args.get(0);
                String methodName = (String) args.get(1);
                Object argument = args.get(2);
                if (methodName.equalsIgnoreCase("setInputCubeData")) {
                    String name = (String) argument;
                    final InputStream stream;
                    final String asset = binding.getFlutterAssets().getAssetFilePathByName(name);
                    stream = binding.getApplicationContext()
                            .getAssets().open(asset);
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
        }
    }

    public static class GlFilterGroup extends GlFilter {

        private final List<GlFilter> filters;

        private final ArrayList<Pair<GlFilter, GlFramebufferObject>> list = new ArrayList<Pair<GlFilter, GlFramebufferObject>>();

        public GlFilterGroup(final GlFilter... glFilters) {
            this(Arrays.asList(glFilters));
        }

        public GlFilterGroup(final List<GlFilter> glFilters) {
            filters = glFilters;
        }

        public void addFilter(GlFilter glFilter) {
            this.filters.add(glFilter);
        }

        public List<GlFilter> getFilters() {
            return filters;
        }

        @Override
        public void setup() {
            super.setup();

            if (filters != null) {
                final int max = filters.size();
                int count = 0;

                for (final GlFilter shader : filters) {
                    shader.setup();
                    final GlFramebufferObject fbo;
                    if ((count + 1) < max) {
                        fbo = new GlFramebufferObject();
                    } else {
                        fbo = null;
                    }
                    list.add(Pair.create(shader, fbo));
                    count++;
                }
            }
        }

        @Override
        public void release() {
            for (final Pair<GlFilter, GlFramebufferObject> pair : list) {
                if (pair.first != null) {
                    pair.first.release();
                }
                if (pair.second != null) {
                    pair.second.release();
                }
            }
            list.clear();
            super.release();
        }

        @Override
        public void setFrameSize(final int width, final int height) {
            super.setFrameSize(width, height);

            for (final Pair<GlFilter, GlFramebufferObject> pair : list) {
                if (pair.first != null) {
                    pair.first.setFrameSize(width, height);
                }
                if (pair.second != null) {
                    pair.second.setup(width, height);
                }
            }
        }

        private int prevTexName;

        @Override
        public void draw(final int texName, final GlFramebufferObject fbo) {
            prevTexName = texName;
            for (final Pair<GlFilter, GlFramebufferObject> pair : list) {
                if (pair.second != null) {
                    if (pair.first != null) {
                        pair.second.enable();
                        GLES20.glClear(GL_COLOR_BUFFER_BIT);

                        pair.first.draw(prevTexName, pair.second);
                    }
                    prevTexName = pair.second.getTexName();

                } else {
                    if (fbo != null) {
                        fbo.enable();
                    } else {
                        GLES20.glBindFramebuffer(GL_FRAMEBUFFER, 0);
                    }

                    if (pair.first != null) {
                        pair.first.draw(prevTexName, fbo);
                    }
                }
            }
        }

    }
}
