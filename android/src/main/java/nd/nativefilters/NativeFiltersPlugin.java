package nd.nativefilters;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** NativeFiltersPlugin */
public class NativeFiltersPlugin implements FlutterPlugin {
  private NativeFilterFactory factory;

  @Deprecated
  private static NativeFiltersPlugin plugin;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    factory = new NativeFilterFactory(flutterPluginBinding);
  }

  public static void registerWith(Registrar registrar) {
    plugin = new NativeFiltersPlugin();
    plugin.factory = new NativeFilterFactory(registrar);
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    factory = null;
  }
}
