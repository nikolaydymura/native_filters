package nd.nativefilters.preview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.util.SparseArray;
import android.view.Surface;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.view.TextureRegistry;
import nd.flutter.plugins.ivfilters.Messages;
import nd.nativefilters.FLTImageVideoFilterFactoryApi;
import nd.nativefilters.NativeFilter;

class VideoPreview {
    private NativeFilter filter;
    private final ExoPlayer player;
    private VideoProcessingGLSurfaceView playerView;

    private final DefaultMediaSourceFactory mediaFactory;

    VideoPreview(Context context) {
        this.player = new ExoPlayer.Builder(context)
                .build();
        this.mediaFactory = new DefaultMediaSourceFactory(context);
        this.player.setRepeatMode(Player.REPEAT_MODE_ONE);
        this.playerView = new VideoProcessingGLSurfaceView(context, false, new MonochromeVideoProcessor(context));
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
    }

    public VideoProcessingGLSurfaceView getPlayerView() {
        return playerView;
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