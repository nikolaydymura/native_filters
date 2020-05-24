import Flutter

class FilterImagePreview: NSObject, FlutterPlatformView {
    let methodChannel: FlutterMethodChannel
    let filtersFactory: NativeFilterFactory
    let imageView: UIImageView
    var selectedFilter: NativeFilter?


    init(frame: CGRect, registrar: FlutterPluginRegistrar, id: Int64, factory: NativeFilterFactory) {
        methodChannel = FlutterMethodChannel(
            name: "FilterImagePreview_\(id)",
            binaryMessenger: registrar.messenger()
        )
        imageView = UIImageView(frame: frame)
        filtersFactory = factory
        super.init()
        methodChannel.setMethodCallHandler(callHandler)
    }

    func callHandler(call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "setFilter" {
            guard let index = call.arguments as? Int else {
                return result(FlutterError.init())
            }
            guard let filter = filtersFactory[index] else {
                return result(FlutterError.init())
            }
            selectedFilter = filter
            processImage()
            result(nil)
        } else if call.method == "update" {
            processImage()
            result(nil)
        } else if call.method == "release" {
            imageView.image = nil
            result(nil)
        }
    }

    func view() -> UIView {
        imageView
    }

    func processImage() {
        guard let image = selectedFilter?.processedImage else {
            return
        }

        imageView.image = image
    }
}
