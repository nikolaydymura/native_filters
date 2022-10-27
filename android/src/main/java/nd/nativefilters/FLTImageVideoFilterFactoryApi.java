package nd.nativefilters;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.SparseArray;

import androidx.annotation.NonNull;

import com.daasuu.gpuv.composer.GPUMp4Composer;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.daasuu.gpuv.egl.filter.GlLookUpTableFilter;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import jp.co.cyberagent.android.gpuimage.GPUImageRenderer;
import jp.co.cyberagent.android.gpuimage.PixelBuffer;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilterGroup;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageLookupFilter;
import nd.flutter.plugins.ivfilters.GPUImageDynamicFilter;
import nd.flutter.plugins.ivfilters.GPUVideoDynamicFilter;
import nd.flutter.plugins.ivfilters.Messages;

public class FLTImageVideoFilterFactoryApi implements Messages.ImageVideoFilterFactoryApi {
    private final SparseArray<NativeFilter> filters = new SparseArray<>();
    private int filterSequence = 0;
    private FlutterPlugin.FlutterPluginBinding binding;

    FLTImageVideoFilterFactoryApi(FlutterPlugin.FlutterPluginBinding binding) {
        this.binding = binding;
    }

    public NativeFilter getById(int id) {
        return filters.get(id);
    }

    @NonNull
    @Override
    public Messages.FilterMessage createShaderFilter(@NonNull Messages.CreateShaderFilterMessage msg) {
        int filterId = filterSequence;
        filterSequence++;

        NativeFilter filter = new NativeFilter(
                new GPUImageDynamicFilter(msg.getShader(), msg.getParams()),
                new GPUVideoDynamicFilter(msg.getShader(), msg.getParams()));

        filters.append(filterId, filter);
        return new Messages.FilterMessage.Builder().setFilterId((long) filterId).build();
    }

    @NonNull
    @Override
    public Messages.FilterMessage createFilter(@NonNull Messages.CreateFilterMessage msg) {
        int filterId = filterSequence;
        filterSequence++;
        NativeFilter filter = new NativeFilter(binding, filterId);

        String name = msg.getName();
        if (name.startsWith("GPUImage")) {
            try {
                Class<?> filterClass = Class.forName("jp.co.cyberagent.android.gpuimage.filter." + name);

                GPUImageFilter gpuImageFilter = (GPUImageFilter) filterClass.newInstance();

                if (filter.filterGroup == null) {
                    filter.filterGroup = new GPUImageFilterGroup();
                }
                filter.filterGroup.addFilter(gpuImageFilter);
            } catch (IllegalAccessException | InstantiationException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        } else if (name.startsWith("Gl")) {
            try {
                Class<?> filterClass = Class.forName("com.daasuu.gpuv.egl.filter." + name);
                final GlFilter glFilter;
                if (name.equalsIgnoreCase("GlLookUpTableFilter")) {
                    glFilter = new GlLookUpTableFilter(null);
                } else {
                    glFilter = (GlFilter) filterClass.newInstance();
                }
                if (filter.glFilterGroup == null) {
                    filter.glFilterGroup = new NativeFilter.GlFilterGroup(glFilter);
                } else {
                    filter.glFilterGroup.addFilter(glFilter);
                }

            } catch (IllegalAccessException | InstantiationException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        filters.append(filterId, filter);
        return new Messages.FilterMessage.Builder().setFilterId((long) filterId).build();
    }

    @NonNull
    @Override
    public Messages.FilterMessage createFilterGroup() {
        int filterId = filterSequence;
        filterSequence++;
        NativeFilter filter = new NativeFilter(binding, filterId);
        filters.append(filterId, filter);
        return new Messages.FilterMessage.Builder().setFilterId((long) filterId).build();
    }

    @Override
    public void appendShaderFilter(@NonNull Messages.AppendShaderFilterMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            if (filter.filterGroup == null) {
                filter.filterGroup = new GPUImageFilterGroup();
            }
            GPUImageDynamicFilter gpuFilter = new GPUImageDynamicFilter(msg.getShader(), msg.getParams());
            filter.filterGroup.addFilter(gpuFilter);
            GPUVideoDynamicFilter glFilter = new GPUVideoDynamicFilter(msg.getShader(), msg.getParams());
            if (filter.glFilterGroup == null) {
                filter.glFilterGroup = new NativeFilter.GlFilterGroup(glFilter);
            } else {
                filter.glFilterGroup.addFilter(glFilter);
            }
        }
    }

    @Override
    public void appendFilter(@NonNull Messages.AppendFilterMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            String name = msg.getName();
            if (name.startsWith("GPUImage")) {
                try {
                    Class<?> filterClass = Class.forName("jp.co.cyberagent.android.gpuimage.filter." + name);

                    GPUImageFilter gpuImageFilter = (GPUImageFilter) filterClass.newInstance();

                    if (filter.filterGroup == null) {
                        filter.filterGroup = new GPUImageFilterGroup();
                    }
                    filter.filterGroup.addFilter(gpuImageFilter);
                } catch (IllegalAccessException | InstantiationException | ClassNotFoundException e) {
                    e.printStackTrace();
                }
            } else if (name.startsWith("Gl")) {
                try {
                    Class<?> filterClass = Class.forName("com.daasuu.gpuv.egl.filter." + name);
                    final GlFilter glFilter;
                    if (name.equalsIgnoreCase("GlLookUpTableFilter")) {
                        glFilter = new GlLookUpTableFilter(null);
                    } else {
                        glFilter = (GlFilter) filterClass.newInstance();
                    }
                    if (filter.glFilterGroup == null) {
                        filter.glFilterGroup = new NativeFilter.GlFilterGroup(glFilter);
                    } else {
                        filter.glFilterGroup.addFilter(glFilter);
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public void removeFilter(@NonNull Messages.RemoveFilterMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            if (filter.filterGroup != null) {
                List<GPUImageFilter> filters = filter.filterGroup.getFilters();
                GPUImageFilter gpuImageFilter = filters.remove(msg.getFilterIndex().intValue());
                gpuImageFilter.destroy();
            } else if (filter.glFilterGroup != null) {
                List<GlFilter> filters = filter.glFilterGroup.getFilters();
                GlFilter glFilter = filters.remove(msg.getFilterIndex().intValue());
                glFilter.release();
            }
        }
    }

    @Override
    public void replaceFilter(@NonNull Messages.ReplaceFilterMessage msg) {

    }

    @Override
    public void setInputData(@NonNull Messages.InputDataMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            try {
                byte[] data = msg.getData();

                filter.inputFile = null;
                filter.inputBitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void setInputSource(@NonNull Messages.InputSourceMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            try {
                if (msg.getAsset()) {
                    final String asset = binding.getFlutterAssets().getAssetFilePathByName(msg.getPath());
                    if (msg.getVideo()) {
                        filter.inputBitmap = null;
                        final InputStream stream = binding.getApplicationContext()
                                .getAssets().open(asset);
                        filter.inputFile = new File(binding.getApplicationContext().getFilesDir(), "tempVideo.mp4");

                        FileOutputStream os = null;
                        try {
                            os = new FileOutputStream(filter.inputFile);
                            byte[] buffer = new byte[1024];
                            int length;
                            while ((length = stream.read(buffer)) > 0) {
                                os.write(buffer, 0, length);
                            }
                        } finally {
                            stream.close();
                            os.close();
                        }
                    } else {
                        final InputStream stream = binding.getApplicationContext()
                                .getAssets().open(asset);
                        filter.inputBitmap = BitmapFactory.decodeStream(stream);
                        filter.inputFile = null;
                    }

                } else {
                    filter.inputFile = new File(msg.getPath());
                    filter.inputBitmap = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @NonNull
    @Override
    public Messages.ExportDataMessage exportData(@NonNull Messages.FilterMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            GPUImageRenderer renderer = new GPUImageRenderer(filter.filterGroup);
            Bitmap bitmap = filter.inputBitmap;
            if (bitmap == null && filter.inputFile != null) {
                bitmap = BitmapFactory.decodeFile(filter.inputFile.getAbsolutePath());
            }
            renderer.setImageBitmap(bitmap, false);
            PixelBuffer buffer = new PixelBuffer(bitmap.getWidth(), bitmap.getHeight());
            buffer.setRenderer(renderer);

            renderer.setFilter(filter.filterGroup);

            final Bitmap decoded = buffer.getBitmap();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            if (filter.inputFile != null) {
                if (filter.inputFile.getName().endsWith(".png")) {
                    decoded.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                } else {
                    decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                }
            } else {
                decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
            }
            renderer.deleteImage();
            buffer.destroy();
            return new Messages.ExportDataMessage.Builder()
                    .setFilterId(msg.getFilterId())
                    .setData(outputStream.toByteArray())
                    .build();
        }
        return null;
    }

    @Override
    public void exportFile(@NonNull Messages.ExportFileMessage msg, Messages.Result<Void> result) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            if (msg.getVideo()) {
                new GPUMp4Composer(filter.inputFile.getAbsolutePath(), msg.getPath())
                        .size(1280, 720)
                        .filter(filter.glFilterGroup)
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
                                result.error(new RuntimeException("canceled"));
                            }

                            @Override
                            public void onFailed(Exception e) {
                                result.error(e);
                            }
                        })
                        .start();
            } else {

                GPUImageRenderer renderer = new GPUImageRenderer(filter.filterGroup);
                Bitmap bitmap = filter.inputBitmap;
                if (bitmap == null && filter.inputFile != null) {
                    bitmap = BitmapFactory.decodeFile(filter.inputFile.getAbsolutePath());
                }
                renderer.setImageBitmap(bitmap, false);
                PixelBuffer buffer = new PixelBuffer(bitmap.getWidth(), bitmap.getHeight());
                buffer.setRenderer(renderer);

                renderer.setFilter(filter.filterGroup);

                final Bitmap decoded = buffer.getBitmap();
                try {
                    FileOutputStream outputStream = new FileOutputStream(new File(msg.getPath()));
                    if (filter.inputFile != null) {
                        if (filter.inputFile.getName().endsWith(".png")) {
                            decoded.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                        } else {
                            decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                        }
                    } else {
                        decoded.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                    }
                    result.success(null);
                } catch (FileNotFoundException e) {
                    result.error(e);
                    e.printStackTrace();
                } finally {
                    renderer.deleteImage();
                    buffer.destroy();
                }
            }
        }
    }

    @Override
    public void setNumberValue(@NonNull Messages.InputNumberValueMessage msg) {

    }

    @Override
    public void setNumberListValue(@NonNull Messages.InputNumberListValueMessage msg) {

    }

    @Override
    public void setDataValue(@NonNull Messages.InputDataValueMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (msg.getKey().equalsIgnoreCase("inputCubeData")) {
            byte[] bytes = msg.getValue();
            final Bitmap lutBitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
            if (filter.glFilterGroup != null && !filter.glFilterGroup.getFilters().isEmpty()) {
                GlLookUpTableFilter glFilter = new GlLookUpTableFilter(lutBitmap);
                filter.glFilterGroup.getFilters().set(msg.getFilterIndex().intValue(), glFilter);
            } else if (filter.filterGroup != null && !filter.filterGroup.getFilters().isEmpty()) {
                GPUImageLookupFilter imageFilter = (GPUImageLookupFilter) filter.filterGroup.getFilters().get(msg.getFilterIndex().intValue());
                imageFilter.setBitmap(lutBitmap);
            }
        }
    }

    @Override
    public void setDataSourceValue(@NonNull Messages.InputDataSourceValueMessage msg) {
        try {
            final int filterId = msg.getFilterId().intValue();
            final NativeFilter filter = filters.get(filterId);
            if (msg.getKey().equalsIgnoreCase("inputCubeData")) {
                final Bitmap lutBitmap;
                final String asset = binding.getFlutterAssets().getAssetFilePathByName(msg.getValue());
                if (asset != null) {
                    final InputStream stream = binding.getApplicationContext()
                            .getAssets().open(asset);

                    lutBitmap = BitmapFactory.decodeStream(stream);
                } else {
                    lutBitmap = BitmapFactory.decodeFile(msg.getValue());
                }
                if (filter.glFilterGroup != null && !filter.glFilterGroup.getFilters().isEmpty()) {
                    GlLookUpTableFilter glFilter = new GlLookUpTableFilter(lutBitmap);
                    filter.glFilterGroup.getFilters().set(msg.getFilterIndex().intValue(), glFilter);
                } else if (filter.filterGroup != null && !filter.filterGroup.getFilters().isEmpty()) {
                    GPUImageLookupFilter imageFilter = (GPUImageLookupFilter) filter.filterGroup.getFilters().get(msg.getFilterIndex().intValue());
                    imageFilter.setBitmap(lutBitmap);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void dispose(@NonNull Messages.FilterMessage msg) {
        final int filterId = msg.getFilterId().intValue();
        final NativeFilter filter = filters.get(filterId);
        if (filter != null) {
            filters.remove(filterId);
            filter.destroy();
        }
    }
}
