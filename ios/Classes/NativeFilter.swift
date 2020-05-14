import Flutter
import CoreImage

protocol ImageProcessable: class {
    func processing(_ ciImage: CIImage?) -> CIImage?
}

extension ImageProcessable {
    func processing(_ uiImage: UIImage) -> UIImage? {
        let origin = CIImage(image: uiImage)

        let image = processing(origin)

        return image?.asUIImage(scale: uiImage.scale, orientation: uiImage.imageOrientation) ?? uiImage
    }
}

extension CIImage {
    func asUIImage(scale: CGFloat, orientation: UIImage.Orientation)-> UIImage? {
        guard let cgImage = Context.ciContext.createCGImage(self, from: self.extent) else {
            return nil
        }

        return UIImage(cgImage: cgImage, scale: scale, orientation: orientation)
    }
}

class NativeFilter: NSObject, ImageProcessable {
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

    func processing(_ ciImage: CIImage?) -> CIImage? {
        filter?.setValue(ciImage, forKey: kCIInputImageKey)
        guard let filteredImage = filter?.outputImage else {
            return ciImage
        }
        return filteredImage
    }
}

private final class Context {

    public static let shared = Context()

    public static var egleContext : EAGLContext { return Context.shared.egleContext ?? Context.shared.defaultEgleContext }
    public static var ciContext : CIContext { return Context.shared.ciContext ?? Context.shared.defaultCIContext }

    public static var options: [CIContextOption : Any] {
        #if targetEnvironment(simulator)
            return [
                CIContextOption.priorityRequestLow : true,
                CIContextOption.workingColorSpace : NSNull()
            ]
        #else
            return [
                CIContextOption.useSoftwareRenderer : false,
                CIContextOption.workingColorSpace : NSNull()
            ]
        #endif
    }

    public let defaultEgleContext : EAGLContext
    public let defaultCIContext : CIContext

    public var egleContext : EAGLContext?
    public var ciContext : CIContext?

    fileprivate init() {
        self.defaultEgleContext = EAGLContext(api: .openGLES2)!
        self.defaultCIContext = CIContext(eaglContext: self.defaultEgleContext, options: Context.options)
    }
}
