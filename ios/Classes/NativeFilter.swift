import Flutter
import CoreImage
import AVFoundation
import AVKit
import MobileCoreServices

class NativeFilter: NSObject {
    lazy var currentContext: CIContext? = nil
    var filters: [CIFilter] = []
    
    var originalVideo: URL? {
        didSet {
            if originalVideo != nil {
                originalImage = nil
                originalData = nil
            }
        }
    }
    
    var originalImage: URL? {
        didSet {
            if originalImage != nil {
                originalVideo = nil
                originalData = nil
            }
        }
    }
    
    var originalData: CIImage? {
        didSet {
            if originalData != nil {
                originalVideo = nil
                originalImage = nil
            }
        }
    }
    
    init(name: String? = nil) {
        super.init()
        if let name = name, let filter = CIFilter(name: name) {
            filters.append(filter)
        }
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
    
    /*func processing(_ uiImage: UIImage) -> UIImage? {
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
    }*/
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
            let output = self.processing(source)?.cropped(to: request.sourceImage.extent)
            request.finish(with: output ?? source, context: self.currentContext)
        }
        let item = AVPlayerItem(asset: asset)
        item.videoComposition = videoComposition
        return item
    }
    
    var exportVideoSession: AVAssetExportSession? {
        guard let url = originalVideo else {
            return nil
        }
        
        let asset = AVAsset(url: url)
        let composition = AVMutableComposition()
        let videoTrack = asset.tracks(withMediaType: .video).first
        let videoFormat = videoTrack?.formatDescriptions.map{ $0 as! CMVideoFormatDescription}.first
        let hevc = videoFormat?.extensions[CMFormatDescription.Extensions.Key.formatName] == CMFormatDescription.Extensions.Value.string("HEVC")
        let videoComposition = AVVideoComposition(asset: asset) { request in
            let source = request.sourceImage.clampedToExtent()
            let output = self.processing(source)?.cropped(to: request.sourceImage.extent)
            request.finish(with: output ?? source, context: self.currentContext)
        }
        let _ = createComplexVideoComposition(with: asset, composition: composition)
        let exporter = AVAssetExportSession(asset: composition,
                                            presetName: hevc ? AVAssetExportPresetHEVCHighestQuality : AVAssetExportPresetHighestQuality)
        
        exporter?.videoComposition = videoComposition
        exporter?.outputFileType = .mov
        return exporter
    }
    
    func createComplexVideoComposition(with asset: AVAsset, composition: AVMutableComposition) -> AVVideoComposition? {
        guard let assetVideoTrack = asset.tracks(withMediaType: .video).first,
              let compositionVideoTrack = composition.addMutableTrack(withMediaType: .video,
                                                                 preferredTrackID: kCMPersistentTrackID_Invalid) else {
            NSLog("Something is wrong with the asset.")
            return nil
        }

        do {
            let timeRange = CMTimeRange(start: .zero, duration: asset.duration)
            try compositionVideoTrack.insertTimeRange(timeRange, of: assetVideoTrack, at: .zero)

            if let assetAudioTrack = asset.tracks(withMediaType: .audio).first,
               let compositionAudioTrack = composition.addMutableTrack(withMediaType: .audio,
                                                                       preferredTrackID: kCMPersistentTrackID_Invalid) {
                try compositionAudioTrack.insertTimeRange(timeRange, of: assetAudioTrack, at: .zero)
            }
        } catch(let error) {
            NSLog(error.localizedDescription)
            return nil
        }

        compositionVideoTrack.preferredTransform = assetVideoTrack.preferredTransform
        return combineVideoComposition(from: assetVideoTrack,
                                       compositionVideoTrack: compositionVideoTrack,
                                       composition: composition)
    }
    
    private func combineVideoComposition(from assetVideoTrack: AVAssetTrack,
                                         compositionVideoTrack: AVMutableCompositionTrack,
                                         composition: AVMutableComposition) -> AVMutableVideoComposition {
        var videoComposition = AVMutableVideoComposition()

        combineOutputLayer(assetVideoTrack: assetVideoTrack, videoComposition: &videoComposition)

        let instruction = AVMutableVideoCompositionInstruction()
        instruction.timeRange = CMTimeRange(start: .zero, duration: composition.duration)
        let layerInstruction = compositionLayerInstruction(for: compositionVideoTrack,
                                                           assetTrack: assetVideoTrack)
        instruction.layerInstructions = [layerInstruction]
        videoComposition.instructions = [instruction]

        return videoComposition
    }

    private func combineOutputLayer(assetVideoTrack: AVAssetTrack, videoComposition: inout AVMutableVideoComposition) {
        let videoSize = assetVideoTrack.naturalSize

        let videoLayer = CALayer()
        videoLayer.frame = CGRect(origin: .zero, size: videoSize)

        let outputLayer = CALayer()
        outputLayer.frame = CGRect(origin: .zero, size: videoSize)
        outputLayer.addSublayer(videoLayer)

        videoComposition.renderSize = videoSize
        videoComposition.frameDuration = CMTime(value: 1, timescale: 30)
        videoComposition.animationTool = AVVideoCompositionCoreAnimationTool(postProcessingAsVideoLayer: videoLayer,
                                                                             in: outputLayer)
    }

    private func compositionLayerInstruction(for track: AVCompositionTrack, assetTrack: AVAssetTrack) -> AVMutableVideoCompositionLayerInstruction {
        let instruction = AVMutableVideoCompositionLayerInstruction(assetTrack: track)
        let transform = assetTrack.preferredTransform

        instruction.setTransform(transform, at: .zero)
        return instruction
    }
}

func colorCubeFilterFromLUT(image : UIImage, size: Int) -> NSData? {

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
