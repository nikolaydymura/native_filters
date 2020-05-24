import Flutter
import CoreImage
import AVFoundation
import AVKit
import MobileCoreServices

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
    let pluginRegistrar: FlutterPluginRegistrar
    let name: String
    lazy var filter: CIFilter? = {
        return CIFilter(name: name)
    }()
    
    private var originalVideo: URL?
    private var originalImage: UIImage?
    
    var processedImage: UIImage? {
        guard let image = originalImage else {
            return nil
        }
        return processing(image) ?? image
    }

    var processingVideo: AVPlayerItem? {
        guard let url = originalVideo else {
            return nil
        }
        let asset = AVAsset(url: url)
        let item = AVPlayerItem(asset: asset)
        item.videoComposition = AVVideoComposition(asset: asset, applyingCIFiltersWithHandler: applyingSelectedFilterHandler)
        return item
    }
    
    init(registrar: FlutterPluginRegistrar, key: String, id: Int) {
        name = key
        methodChannel = FlutterMethodChannel(
            name: "CIFilter-\(id)",
            binaryMessenger: registrar.messenger()
        )
        pluginRegistrar = registrar
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
        
        if call.method == "setSource" {
            guard let data = call.arguments as? FlutterStandardTypedData else {
                return result(FlutterError.init())
            }
            processSource(data: data.data)
            return result(nil)
        }
        if call.method == "setFileSource" {
            guard let path = call.arguments as? String else {
                return result(FlutterError.init())
            }
            processSource(url: URL(fileURLWithPath: path))
            return result(nil)
        }
        if call.method == "setAssetSource" {
            guard let name = call.arguments as? String else {
                return result(FlutterError.init())
            }
            
            let asset = pluginRegistrar.lookupKey(forAsset: name)
            
            guard let path = Bundle.main.path(forResource: asset, ofType: nil) else {
                return result(FlutterError.init())
            }
            processSource(url: URL(fileURLWithPath: path))
            return result(nil)
        }
        if call.method == "export" {
            let path = call.arguments as? String
        
            if let image = originalImage {
                return exportImage(input: image, output: path, result: result)
            }
            if let path = path {
                return exportVideo(output: URL(fileURLWithPath: path), result: result)
            }
            
            return result(FlutterError.init())
        }
        result(FlutterError.init())
    }
    
    func processSource(url: URL? = nil, data: Data? = nil) {
        originalVideo = nil
        originalImage = nil
        if let data = data {
            originalImage = UIImage(data: data)
        }
        if let file = url {
            let uti = UTTypeCreatePreferredIdentifierForTag(
                kUTTagClassFilenameExtension,
                file.pathExtension as CFString,
                nil)
            guard let type = uti?.takeRetainedValue() else {
                return
            }
            if UTTypeConformsTo(type, kUTTypeImage) {
                originalImage = UIImage(contentsOfFile: file.path)
            } else if UTTypeConformsTo(type, kUTTypeMPEG4) || UTTypeConformsTo(type, kUTTypeVideo) {
                originalVideo = file
            }
        }
    }
    private func exportImage(input: UIImage, output: String? = nil, result: @escaping FlutterResult) {
        let image = processing(input) ?? input
        
        guard let data = image.jpegData(compressionQuality: 0.9) else {
            result(FlutterError.init())
            return
        }
        if let path = output {
            try? data.write(to: URL(fileURLWithPath: path))
        }
        result(data)
    }
    
    private func exportVideo(output: URL, result: @escaping FlutterResult) {
        guard let input = originalVideo else {
            return result(FlutterError.init())
        }
        let asset = AVAsset(url: input)
        let videoComposition = AVVideoComposition(asset: asset, applyingCIFiltersWithHandler: applyingSelectedFilterHandler)
        
        let exporter = AVAssetExportSession(asset: asset, presetName: AVAssetExportPresetHighestQuality)
        
        exporter?.videoComposition = videoComposition
        exporter?.outputFileType = .mov
        exporter?.outputURL = output

        exporter?.exportAsynchronously { () -> Void in
            if exporter?.error == nil && exporter?.status == .completed {
                result(nil)

            } else {
                let message = String(describing: exporter?.error)
                print("🔥 \(message) in \(#file), \(#function) 🔥")
                result(FlutterError.init())
            }
        }
    }
    
    func applyingSelectedFilterHandler(request: AVAsynchronousCIImageFilteringRequest) {
        let source = request.sourceImage.clampedToExtent()
        let output = self.processing(source)!.cropped(to: request.sourceImage.extent)
        request.finish(with: output, context: nil)
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
