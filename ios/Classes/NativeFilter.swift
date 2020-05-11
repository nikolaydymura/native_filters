import Flutter
import CoreImage

class NativeFilter: NSObject {
    let methodChannel: FlutterMethodChannel
    let name: String
    lazy var filter: CIFilter? = {
        return CIFilter(name: name)
    }()

    init(messenger: FlutterBinaryMessenger, key: String, id: Int) {
        name = key
        methodChannel = FlutterMethodChannel(
            name: "CIFilter-\(id)",
            binaryMessenger: messenger
        )
        super.init()
        methodChannel.setMethodCallHandler(handle)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "inputKeys" {
            guard let keys = filter?.inputKeys else {
                return result(FlutterError.init())
            }
            return result(keys)
        }
        if call.method == "inputKeyDetails" {
            guard let attributes = filter?.attributes,
                let key = call.arguments as? String else {
                return result(FlutterError.init())
            }
            guard let data = attributes[key] as? [AnyHashable: Any]  else {
                return result(FlutterError.init())
            }
            let output = data.mapValues { "\($0)" }
            return result(output)
        }
        result(FlutterError.init())
    }

}
