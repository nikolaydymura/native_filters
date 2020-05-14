import Flutter

public class FilterImagePreviewFactory : NSObject, FlutterPlatformViewFactory {
    let messenger: FlutterBinaryMessenger
    let factory: NativeFilterFactory
    let id: String = "FilterImagePreview"

    init(messenger: FlutterBinaryMessenger, factory: NativeFilterFactory) {
        self.messenger = messenger
        self.factory = factory
    }

    public func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return FilterImagePreview(frame: frame, messenger: messenger, id: viewId, factory: factory)
    }
}

