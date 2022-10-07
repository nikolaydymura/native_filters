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

extension CIImage {
    func asData(pathExtension: String? = nil, output: URL? = nil) -> Data? {
        let uti = UTTypeCreatePreferredIdentifierForTag(
            kUTTagClassFilenameExtension,
            (pathExtension ?? "png") as CFString,
            nil)
        
        guard let type = uti?.takeRetainedValue() else {
            if pathExtension == "jpg" || pathExtension == "jpeg" {
                if let file = output {
                    try? CIContext().writeJPEGRepresentation(of: self, to: file, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
                    return nil
                } else {
                    return CIContext().jpegRepresentation(of: self, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
                }
            }
            return nil
        }
        
        if UTTypeConformsTo(type, kUTTypePNG) {
            if let file = output {
                try? CIContext().writePNGRepresentation(of: self, to: file, format: CIFormat.RGBA8, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
                return nil
            } else {
                return CIContext().pngRepresentation(of: self, format: CIFormat.RGBA8, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
            }
        }
        if let file = output {
            try? CIContext().writeJPEGRepresentation(of: self, to: file, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
            return nil
        } else {
            return CIContext().jpegRepresentation(of: self, colorSpace: colorSpace ?? CGColorSpace(name: CGColorSpace.sRGB)!)
        }
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
    
    private var originalData: CIImage? {
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
            originalData = CIImage(data: data.data)
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
            processedImage?.asData(pathExtension: output.pathExtension, output: output)
                //return result(FlutterError.init())
        
            return result(nil)
        }
        if call.method == "setValue" {
            guard let args = call.arguments as? [Any], args.count == 3 else {
                return result(FlutterError.init())
            }
            guard let index = args[0] as? Int, index >= 0 && index < filters.count else {
                return result(FlutterError.init())
            }
            
            guard let key = args[1] as? String else {
                return result(FlutterError.init())
            }
            
            guard let attributes = filters[index].attributes[key] as? [AnyHashable: Any] else {
                return result(FlutterError.init())
            }
            guard let attrClass = attributes[kCIAttributeClass] as? String else {
                return result(FlutterError.init())
            }
            
            if attrClass == "NSNumber" {
                guard let value = args[2] as? NSNumber else {
                    return result(FlutterError.init())
                }
                filters[index].setValue(value, forKey: key)
                return result(nil)
            } else if attrClass == "CIColor" {
                guard let values = args[2] as? [Double] else {
                    return result(FlutterError.init())
                }
                let red = CGFloat(values[0])
                let green = CGFloat(values[1])
                let blue = CGFloat(values[2])
                let alpha = CGFloat(values[3])
                
                let color = CIColor(red: red, green: green, blue: blue, alpha: alpha)
                filters[index].setValue(color, forKey: key)
                return result(nil)
            } else if attrClass == "CIVector" {
                guard let values = args[2] as? [Double] else {
                    return result(FlutterError.init())
                }
                let items = values.map { CGFloat($0)}
                
                let vector = CIVector(values: items, count: items.count)
                filters[index].setValue(vector, forKey: key)
                return result(nil)
            } else if attrClass == "NSValue" {
                guard let values = args[2] as? [Double] else {
                    return result(FlutterError.init())
                }
                let items = values.map { CGFloat($0)}
                
                let matrix = CGAffineTransform(a: items[0], b: items[1], c: items[2], d: items[3], tx: items[4], ty: items[5])
                filters[index].setValue(matrix, forKey: key)
                return result(nil)
            } else if attrClass == "NSData" {
                guard let name = args[2] as? String else {
                    guard let data = args[2] as? FlutterStandardTypedData else {
                        return result(FlutterError.init())
                    }
                    filters[index].setValue(data.data, forKey: key)
                    return result(nil)
                }
                let asset = pluginRegistrar.lookupKey(forAsset: name)

                let path = Bundle.main.path(forResource: asset, ofType: nil) ?? name
                
                guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
                    return result(FlutterError.init())
                }
                
                filters[index].setValue(data, forKey: key)
                return result(nil)
            }
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
        #if DEBUG
        let start = DispatchTime.now()
        #endif
        let origin = CIImage(image: uiImage)
        
        let image = processing(origin)
        
#if DEBUG
let end = DispatchTime.now()

let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
let timeInterval = Double(nanoTime) / 1_000_000_000

print("\(#function): \(timeInterval) seconds")
#endif
        
        let result = image?.asUIImage(scale: uiImage.scale, orientation: uiImage.imageOrientation)
        return result ?? uiImage
    }
}

extension NativeFilter {
    var processedImage: CIImage? {
        if let image = originalData {
            return processing(image) ?? image
        }
        if let path = originalImage, let image = CIImage(contentsOf: path) {
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

fileprivate func colorCubeFilterFromLUT(image : UIImage, size: Int) -> NSData? {

    let lutImage    = image.cgImage
    let lutWidth    = lutImage!.width
    let lutHeight   = lutImage!.height
    let rowCount    = lutHeight / size
    let columnCount = lutWidth / size

    if ((lutWidth % size != 0) || (lutHeight % size != 0) || (rowCount * columnCount != size)) {
        NSLog("Invalid colorLUT")
        return nil
    }

    let bitmap  = getBytesFromImage(image: image)!
    let floatSize = MemoryLayout<Float>.size

    let cubeData = UnsafeMutablePointer<Float>.allocate(capacity: size * size * size * 4 * floatSize)
    var z = 0
    var bitmapOffset = 0

    for _ in 0 ..< rowCount {
        for y in 0 ..< size {
            let tmp = z
            for _ in 0 ..< columnCount {
                for x in 0 ..< size {

                    let alpha   = Float(bitmap[bitmapOffset]) / 255.0
                    let red     = Float(bitmap[bitmapOffset+1]) / 255.0
                    let green   = Float(bitmap[bitmapOffset+2]) / 255.0
                    let blue    = Float(bitmap[bitmapOffset+3]) / 255.0

                    let dataOffset = (z * size * size + y * size + x) * 4

                    cubeData[dataOffset + 3] = alpha
                    cubeData[dataOffset + 2] = red
                    cubeData[dataOffset + 1] = green
                    cubeData[dataOffset + 0] = blue
                    bitmapOffset += 4
                }
                z += 1
            }
            z = tmp
        }
        z += columnCount
    }

    let colorCubeData = NSData(bytesNoCopy: cubeData, length: size * size * size * 4 * floatSize, freeWhenDone: true)
    return colorCubeData
}


fileprivate func getBytesFromImage(image:UIImage?) -> [UInt8]?
{
    var pixelValues: [UInt8]?
    if let imageRef = image?.cgImage {
        let width = Int(imageRef.width)
        let height = Int(imageRef.height)
        let bitsPerComponent = 8
        let bytesPerRow = width * 4
        let totalBytes = height * bytesPerRow

        let bitmapInfo = CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Little.rawValue
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        var intensities = [UInt8](repeating: 0, count: totalBytes)

        let contextRef = CGContext(data: &intensities, width: width, height: height, bitsPerComponent: bitsPerComponent, bytesPerRow: bytesPerRow, space: colorSpace, bitmapInfo: bitmapInfo)
        contextRef?.draw(imageRef, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))

        pixelValues = intensities
    }
    return pixelValues!
}
