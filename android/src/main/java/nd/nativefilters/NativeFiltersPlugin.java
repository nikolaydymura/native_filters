package nd.nativefilters;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import nd.flutter.plugins.ivfilters.Messages;
import nd.nativefilters.preview.FilterVideoPreviewFactory;

/**
 * NativeFiltersPlugin
 */
public class NativeFiltersPlugin implements FlutterPlugin {
    private Messages.ImageVideoFilterFactoryApi factoryApi;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        factoryApi = new FLTImageVideoFilterFactoryApi(binding);
        Messages.ImageVideoFilterFactoryApi.setup(binding.getBinaryMessenger(), factoryApi);
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        factoryApi = null;
    }
}
