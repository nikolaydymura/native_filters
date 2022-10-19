import Flutter

public class FilterVideoPreviewFactory : NSObject, FlutterPlatformViewFactory {
    let registrar: FlutterPluginRegistrar
    let factory: ImageVideoFilterFactory
    let id: String = "FilterVideoPreview"

    init(registrar: FlutterPluginRegistrar, factory: ImageVideoFilterFactory) {
        self.registrar = registrar
        self.factory = factory
    }

    public func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return FilterVideoPreview(frame: frame, registrar: registrar, id: viewId, factory: factory)
    }
}

