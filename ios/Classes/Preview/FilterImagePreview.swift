import Flutter

class FilterImagePreview: NSObject, FlutterPlatformView {
    let methodChannel: FlutterMethodChannel
    let filtersFactory: NativeFilterFactory
    let imageView: UIImageView
    var originalImage: UIImage?
    var selectedFilter: NativeFilter?


    init(frame: CGRect, messenger: FlutterBinaryMessenger, id: Int64, factory: NativeFilterFactory) {
        methodChannel = FlutterMethodChannel(
            name: "FilterImagePreview_\(id)",
            binaryMessenger: messenger
        )
        imageView = UIImageView(frame: frame)
        filtersFactory = factory
        super.init()
        methodChannel.setMethodCallHandler(callHandler)
    }

    func callHandler(call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "loadImageData" {
            guard let data = call.arguments as? FlutterStandardTypedData else {
                return result(FlutterError.init())
            }
            originalImage = UIImage(data: data.data)
            imageView.image = originalImage
            processImage()
            result(nil)
        } else if call.method == "changeFilter" {
            guard let index = call.arguments as? Int else {
                return result(FlutterError.init())
            }
            guard let filter = filtersFactory[index] else {
                return result(FlutterError.init())
            }
            selectedFilter = filter
            processImage()
            result(nil)
        }
    }

    func view() -> UIView {
        imageView
    }

    func processImage() {
        guard let image = originalImage else {
            return
        }
        guard let processed = selectedFilter?.processing(image) else {
            return
        }

        imageView.image = processed
    }
}
