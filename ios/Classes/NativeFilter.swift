import Flutter
import CoreImage
import AVFoundation
import AVKit
import MobileCoreServices

extension CIImage {
    func asUIImage(scale: CGFloat, orientation: UIImage.Orientation)-> UIImage? {
        guard let cgImage = Context.ciContext.createCGImage(self, from: self.extent) else {
            return nil
        }
        
        return UIImage(cgImage: cgImage, scale: scale, orientation: orientation)
    }
}

extension UIImage {
    func asData(pathExtension: String? = nil) -> Data? {
        let uti = UTTypeCreatePreferredIdentifierForTag(
            kUTTagClassFilenameExtension,
            (pathExtension ?? "png") as CFString,
            nil)
        
        guard let type = uti?.takeRetainedValue() else {
            return nil
        }
        
        if UTTypeConformsTo(type, kUTTypePNG) {
            return pngData()
        }
        return jpegData(compressionQuality: 0.9)
    }
}

class NativeFilter: NSObject {
    let methodChannel: FlutterMethodChannel
    let pluginRegistrar: FlutterPluginRegistrar
    
    private var filters: [CIFilter] = []
    
    private var originalVideo: URL? {
        didSet {
            if originalVideo != nil {
                originalImage = nil
                originalData = nil
            }
        }
    }
    
    private var originalImage: URL? {
        didSet {
            if originalImage != nil {
                originalVideo = nil
                originalData = nil
            }
        }
    }
    
    private var originalData: Data? {
        didSet {
            if originalData != nil {
                originalVideo = nil
                originalImage = nil
            }
        }
    }
    
    init(registrar: FlutterPluginRegistrar, id: Int) {
        methodChannel = FlutterMethodChannel(
            name: "CIFilter-\(id)",
            binaryMessenger: registrar.messenger()
        )
        pluginRegistrar = registrar
        super.init()
        methodChannel.setMethodCallHandler(handle)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "addFilter" {
            guard let name = call.arguments as? String else {
                return result(FlutterError.init())
            }
            guard let filter = CIFilter(name: name) else {
                return result(FlutterError.init())
            }
            let index = filters.count
            filters.append(filter)
            return result(index)
        }
        if call.method == "removeFilter" {
            guard let index = call.arguments as? Int,
                index >= 0 && index < filters.count else {
                    return result(FlutterError.init())
            }
            filters.remove(at: index)
            return result(nil)
        }
        if call.method == "getFilter" {
            guard let index = call.arguments as? Int,
                index >= 0 && index < filters.count else {
                    return result(FlutterError.init())
            }
            let name = filters[index].name
            return result(name)
        }
        if call.method == "getFiltersCount" {
            return result(filters.count)
        }
        if call.method == "inputKeys" {
            guard let index = call.arguments as? Int,
                index >= 0 && index < filters.count else {
                    return result(FlutterError.init())
            }
            guard index >= 0 && index < filters.count else {
                return result(FlutterError.init())
            }
            let keys = filters[index].inputKeys
            return result(keys)
        }
        if call.method == "inputKeyDetails" {
            guard let args = call.arguments as? [Any], args.count == 2 else {
                return result(FlutterError.init())
            }
            guard let index = args[0] as? Int, index >= 0 && index < filters.count else {
                return result(FlutterError.init())
            }
            let attributes = filters[index].attributes
            
            guard let key = args[1] as? String else {
                return result(FlutterError.init())
            }
            
            guard let data = attributes[key] as? [AnyHashable: Any]  else {
                return result(FlutterError.init())
            }
            let output = data.mapValues { "\($0)" }
            return result(output)
        }
        if call.method == "setImageDataSource" {
            guard let data = call.arguments as? FlutterStandardTypedData else {
                return result(FlutterError.init())
            }
            originalData = data.data
            return result(nil)
        }
        if call.method == "setImageFileSource"  || call.method == "setVideoFileSource" {
            guard let path = call.arguments as? String else {
                return result(FlutterError.init())
            }
            if call.method == "setVideoFileSource" {
                originalVideo = URL(fileURLWithPath: path)
            } else {
                originalImage = URL(fileURLWithPath: path)
            }
            originalImage = URL(fileURLWithPath: path)
            return result(nil)
        }
        if call.method == "setImageAssetSource" || call.method == "setVideoAssetSource"  {
            guard let name = call.arguments as? String else {
                return result(FlutterError.init())
            }
            
            let asset = pluginRegistrar.lookupKey(forAsset: name)
            
            guard let path = Bundle.main.path(forResource: asset, ofType: nil) else {
                return result(FlutterError.init())
            }
            
            if call.method == "setVideoAssetSource" {
                originalVideo = URL(fileURLWithPath: path)
            } else {
                originalImage = URL(fileURLWithPath: path)
            }
            return result(nil)
        }
        if call.method == "exportVideo" {
            guard let path = call.arguments as? String else {
                return result(FlutterError.init())
            }
            let output = URL(fileURLWithPath: path)
            guard let exporter = exportVideoSession else {
                return result(FlutterError.init())
            }
            exporter.outputURL = output
            return exporter.exportAsynchronously { () -> Void in
                if exporter.error == nil && exporter.status == .completed {
                    result(nil)

                } else {
                    let message = String(describing: exporter.error)
                    print("🔥 \(message) in \(#file), \(#function) 🔥")
                    result(FlutterError.init())
                }
            }
        }
        
        if call.method == "exportData" {
            guard let image = processedImage?.asData(pathExtension: originalImage?.pathExtension) else {
                return result(FlutterError.init())
            }
            return result(image)
        }
        
        if call.method == "exportImage" {
            guard let path = call.arguments as? String else {
                return result(FlutterError.init())
            }
            let output = URL(fileURLWithPath: path)
            guard let image = processedImage?.asData(pathExtension: output.pathExtension) else {
                return result(FlutterError.init())
            }
            try? image.write(to: output)
            return result(nil)
        }
        result(FlutterError.init())
    }

}

extension NativeFilter {
    func processing(_ ciImage: CIImage?) -> CIImage? {
        var image = ciImage
        for filter in filters {
            filter.setValue(image, forKey: kCIInputImageKey)
            if let filteredImage = filter.outputImage {
               image = filteredImage
            }
        }
        return image
    }
    
    func processing(_ uiImage: UIImage) -> UIImage? {
        let origin = CIImage(image: uiImage)
        
        let image = processing(origin)
        
        return image?.asUIImage(scale: uiImage.scale, orientation: uiImage.imageOrientation) ?? uiImage
    }
}

extension NativeFilter {
    var processedImage: UIImage? {
        if let data = originalData, let image = UIImage(data: data) {
            return processing(image) ?? image
        }
        if let path = originalImage?.path, let image = UIImage(contentsOfFile: path) {
            return processing(image) ?? image
        }
        return nil
    }

    var processingVideo: AVPlayerItem? {
        guard let url = originalVideo else {
            return nil
        }
        
        let asset = AVAsset(url: url)
        let videoComposition = AVVideoComposition(asset: asset) { request in
            let source = request.sourceImage.clampedToExtent()
            let output = self.processing(source)!.cropped(to: request.sourceImage.extent)
            request.finish(with: output, context: nil)
        }
        let item = AVPlayerItem(asset: asset)
        item.videoComposition = videoComposition
        return item
    }
    
    private var exportVideoSession: AVAssetExportSession? {
        guard let url = originalVideo else {
            return nil
        }
        
        let asset = AVAsset(url: url)
        let videoComposition = AVVideoComposition(asset: asset) { request in
            let source = request.sourceImage.clampedToExtent()
            let output = self.processing(source)!.cropped(to: request.sourceImage.extent)
            request.finish(with: output, context: nil)
        }
        let exporter = AVAssetExportSession(asset: asset, presetName: AVAssetExportPresetHighestQuality)
        
        exporter?.videoComposition = videoComposition
        exporter?.outputFileType = .mov
        return exporter
    }
}
