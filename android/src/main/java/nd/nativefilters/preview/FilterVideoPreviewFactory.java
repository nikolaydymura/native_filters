package nd.nativefilters.preview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.util.SparseArray;
import android.view.Surface;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Supplier;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.view.TextureRegistry;
import nd.flutter.plugins.ivfilters.FilterVideoProcessor;
import nd.flutter.plugins.ivfilters.Messages;
import nd.nativefilters.FLTImageVideoFilterFactoryApi;
import nd.nativefilters.NativeFilter;

class VideoPreview implements Supplier<VideoProcessingGLSurfaceView.VideoProcessor> {
    private NativeFilter filter;
    private FilterVideoProcessor videoProcessor;
    private final ExoPlayer player;
    private VideoProcessingGLSurfaceView playerView;

    private final DefaultMediaSourceFactory mediaFactory;
    private final Context context;

    VideoPreview(Context context) {
        this.player = new ExoPlayer.Builder(context)
                .build();
        this.mediaFactory = new DefaultMediaSourceFactory(context);
        this.context = context;
        this.player.setRepeatMode(Player.REPEAT_MODE_ONE);
        this.playerView = new VideoProcessingGLSurfaceView(context, false, this);
    }

    public void setSource(Uri uri) {
        final MediaItem item = MediaItem.fromUri(uri);
        player.setMediaSource(mediaFactory
                .createMediaSource(item));
        player.prepare();
        player.play();
        playerView.setPlayer(player);
    }

    public void dispose() {
        player.stop();
        player.release();
    }

    public void pause() {
        player.pause();
    }

    public void play() {
        player.play();
    }

    public void setFilter(NativeFilter filter) {
        this.filter = filter;
        final Map<String, Object> configuration = new HashMap<>();
        final String filterName = filter.glFilterGroup.getFilters().get(0).getClass().getSimpleName();
        if (filterName.equalsIgnoreCase("GlMonochromeFilter")) {
            configuration.put("AttributeFilterName", "monochrome");
            configuration.put("inputIntensity", new HashMap<String, Object>() {
                {
                    put("AttributeClass", "float");
                    put("AttributeDefault", 1.0f);
                    put("AttributeCurrent", 0.9f);
                }
            });
        } else if (filterName.equalsIgnoreCase("GlLookUpTableFilter")) {
            configuration.put("AttributeFilterName", "lookup_table");
            configuration.put("inputCubeTexture", new HashMap<String, Object>() {
                {
                    put("AttributeClass", "Bitmap");
                    try {
                        final Bitmap bitmap = BitmapFactory.decodeStream(context.getAssets().open("lookup_sample.png"));
                        put("AttributeCurrent", bitmap);
                    } catch (IOException e) {
                        throw new IllegalStateException(e);
                    }
                }
            });
        }
        videoProcessor = new FilterVideoProcessor(context, configuration);
    }

    public VideoProcessingGLSurfaceView getPlayerView() {
        return playerView;
    }

    @Override
    public VideoProcessingGLSurfaceView.VideoProcessor get() {
        return videoProcessor;
    }
}

public class FilterVideoPreviewFactory extends PlatformViewFactory implements Messages.VideoPreviewApi {

    private FLTImageVideoFilterFactoryApi factory;
    private FlutterPlugin.FlutterPluginBinding binding;
    private SparseArray<VideoPreview> previews = new SparseArray<>();

    public FilterVideoPreviewFactory(FLTImageVideoFilterFactoryApi factory, FlutterPlugin.FlutterPluginBinding binding) {
        super(StandardMessageCodec.INSTANCE);
        this.factory = factory;
        this.binding = binding;
    }

    @NonNull
    @Override
    public PlatformView create(Context context, int viewId, @Nullable Object args) {
        VideoPreview videoPreview = new VideoPreview(context);
        previews.append(viewId, videoPreview);
        return new FilterVideoPreview(videoPreview);
    }


    @NonNull
    @Override
    public Messages.PreviewCreateMessage create() {
        return null;
    }

    @Override
    public void setFilter(@NonNull Messages.PreviewFilterMessage msg) {
        previews.get(msg.getTextureId().intValue()).setFilter(factory.getById(msg.getFilterId().intValue()));
    }

    @Override
    public void setSource(@NonNull Messages.PreviewSourceMessage msg) {
        final String asset = binding.getFlutterAssets().getAssetFilePathByName(msg.getPath());
        if (asset != null) {
            final Uri assetUri = Uri.parse("asset:///" + asset);
            previews.get(msg.getTextureId().intValue()).setSource(assetUri);

            return;
        }
        previews.get(msg.getTextureId().intValue()).setSource(Uri.fromFile(new File(msg.getPath())));
    }

    @Override
    public void play(@NonNull Messages.PreviewPlayMessage msg) {
        previews.get(msg.getTextureId().intValue()).play();
    }

    @Override
    public void pause(@NonNull Messages.PreviewPauseMessage msg) {
        previews.get(msg.getTextureId().intValue()).pause();
    }

    @Override
    public void dispose(@NonNull Messages.PreviewDisposeMessage msg) {
        previews.get(msg.getTextureId().intValue()).dispose();
        previews.remove(msg.getTextureId().intValue());
    }
}