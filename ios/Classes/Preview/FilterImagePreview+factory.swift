import Flutter

public class FilterImagePreviewFactory : NSObject, FlutterPlatformViewFactory {
    let registrar: FlutterPluginRegistrar
    let factory: NativeFilterFactory
    let id: String = "FilterImagePreview"

    init(registrar: FlutterPluginRegistrar, factory: NativeFilterFactory) {
        self.registrar = registrar
        self.factory = factory
    }

    public func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return FilterImagePreview(frame: frame, registrar: registrar, id: viewId, factory: factory)
    }
}

