package nd.nativefilters.preview;

import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import io.flutter.plugin.platform.PlatformView;

class FilterVideoPreview implements PlatformView {
    private final VideoPreview player;

    FilterVideoPreview(VideoPreview player) {
        this.player = player;
    }

    @Nullable
    @Override
    public View getView() {
        return player.getPlayerView();
    }

    @Override
    public void dispose() {
        player.dispose();
    }

    @Override
    public void onFlutterViewAttached(@NonNull View flutterView) {
        PlatformView.super.onFlutterViewAttached(flutterView);
        player.getPlayerView().onResume();
    }

    @Override
    public void onFlutterViewDetached() {
        PlatformView.super.onFlutterViewDetached();
        player.getPlayerView().onPause();
    }
}