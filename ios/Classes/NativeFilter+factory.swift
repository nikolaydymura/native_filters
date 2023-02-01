import Flutter
import Accelerate
import AVFoundation

class ImageVideoFilterFactory: NSObject, FLTImageVideoFilterFactoryApi {
    
    private var filters: [Int64: NativeFilter] = [:]
    private let registrar: FlutterPluginRegistrar
    private var filterSequence: Int64 = 0
    private var exporterSequence: Int64 = 0
    
    init(registrar: FlutterPluginRegistrar) {
        self.registrar =  registrar
    }
    
    subscript(index: NSNumber) -> NativeFilter? {
        return filters[index.int64Value]
    }
    
    func createFilter(_ msg: FLTCreateFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTFilterMessage? {
        let filterId = filterSequence
        filterSequence += 1
        filters[filterId] = NativeFilter(name: msg.name)
        return FLTFilterMessage.make(withFilterId: NSNumber(value: filterId))
    }
    
    func createFilterGroup(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTFilterMessage? {
        let filterId = filterSequence
        filterSequence += 1
        filters[filterId] = NativeFilter()
        return FLTFilterMessage.make(withFilterId: NSNumber(value: filterId))
    }
    
    func appendFilter(_ msg: FLTAppendFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard let filter = CIFilter(name: msg.name) else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter \(msg.name) not available",
                                              details: nil)
            return
        }
        container.filters.append(filter)
    }
    
    func removeFilter(_ msg: FLTRemoveFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>)  {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        container.filters.remove(at: msg.filterIndex.intValue)
    }
    
    func replaceFilter(_ msg: FLTReplaceFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard let filter = CIFilter(name: msg.name) else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter \(msg.name) not available",
                                              details: nil)
            return
        }
        container.filters[msg.filterIndex.intValue] = filter
    }
    
    func disposeFilter(_ msg: FLTFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard filters.removeValue(forKey: msg.filterId.int64Value) != nil else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
    }
}

extension ImageVideoFilterFactory {
    func setInputData(_ msg: FLTInputDataMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        container.originalData = CIImage(data: msg.data.data)
    }
    
    func setInputSource(_ msg: FLTInputSourceMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        if msg.asset.boolValue {
            let asset = registrar.lookupKey(forAsset: msg.path)
            
            guard let path = Bundle.main.path(forResource: asset, ofType: nil) else {
                error.pointee = FlutterError.init(code: "image-video-filter",
                                                  message: "Asset not found",
                                                  details: nil)
                return
            }
            if msg.video.boolValue {
                container.originalVideo = URL(fileURLWithPath: path)
            } else {
                container.originalImage = URL(fileURLWithPath: path)
            }
            
        } else {
            if msg.video.boolValue {
                container.originalVideo = URL(fileURLWithPath: msg.path)
            } else {
                container.originalImage = URL(fileURLWithPath: msg.path)
            }
        }
    }
    
}

extension ImageVideoFilterFactory {
    func exportData(_ msg: FLTExportDataMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTExportDataMessage? {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return nil
        }
        let context = CIContext.selectImageContext(msg.context)
        guard let image = container.processedImage?.asData(context: context, pathExtension: container.originalImage?.pathExtension) else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Failed to export data",
                                              details: nil)
           return nil
        }
        return FLTExportDataMessage.make(withFilterId: msg.filterId, data: FlutterStandardTypedData(bytes: image), context: msg.context)
    }
    
    func exportImageFile(_ msg: FLTExportFileMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        let output = URL(fileURLWithPath: msg.path)
        let context = CIContext.selectImageContext(msg.context)
        container.processedImage?.asData(context: context, pathExtension: output.pathExtension, output: output)
    }
    
    func exportVideoFile(_ msg: FLTExportFileMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> NSNumber? {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
            return nil
        }
        let output = URL(fileURLWithPath: msg.path)
        container.currentContext = CIContext.selectVideoContext(msg.context)
        container.currentPresetName = msg.presetName
        guard let exporter = container.exportVideoSession else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Export session not configured",
                                              details: nil)
            return nil
        }
        exporter.outputURL = output
        
        let exportId = exporterSequence
        exporterSequence += 1
        
        let eventChannel = FlutterEventChannel(name: "AVAssetExportSession_\(exportId)",
                                               binaryMessenger: registrar.messenger())
        
        eventChannel.setStreamHandler(AVAssetExportSessionStreamHandler(session: exporter, withTimeInterval: msg.period.doubleValue))
        return NSNumber(value: exportId)
    }
}

extension ImageVideoFilterFactory {
    func setNumberValue(_ msg: FLTInputNumberValueMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard msg.filterIndex.intValue >= 0 && msg.filterIndex.intValue < container.filters.count else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
            return
        }
        let filter = container.filters[msg.filterIndex.intValue]
        filter.setValue(msg.value, forKey: msg.key)
    }
    
    func setNumberListValue(_ msg: FLTInputNumberListValueMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard msg.filterIndex.intValue >= 0 && msg.filterIndex.intValue < container.filters.count else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
            return
        }
        let filter = container.filters[msg.filterIndex.intValue]
        
        guard let attributes = container.filters[msg.filterIndex.intValue].attributes[msg.key] as? [AnyHashable: Any] else {
            return
        }
        guard let attrClass = attributes[kCIAttributeClass] as? String else {
            return
        }
        if attrClass == "CIColor" {
            let values = msg.value.map { CGFloat($0.doubleValue) }
            let color = CIColor(red: values[0], green: values[1], blue: values[2], alpha: values[3])
            filter.setValue(color, forKey: msg.key)
        } else if attrClass == "CIVector" {
            let values = msg.value.map { CGFloat($0.doubleValue) }
            let vector = CIVector(values: values, count: values.count)
            filter.setValue(vector, forKey: msg.key)
        } else if attrClass == "NSValue" {
            let values = msg.value.map { CGFloat($0.doubleValue) }
            
            let matrix = CGAffineTransform(a: values[0], b: values[1], c: values[2], d: values[3], tx: values[4], ty: values[5])
            filter.setValue(matrix, forKey: msg.key)
        }
    }
    
    func setDataValue(_ msg: FLTInputDataValueMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard msg.filterIndex.intValue >= 0 && msg.filterIndex.intValue < container.filters.count else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
            return
        }
        let filter = container.filters[msg.filterIndex.intValue]
        guard let attributes = filter.attributes[msg.key] as? [AnyHashable: Any] else {
            return
        }
        guard let targetClass = attributes[kCIAttributeClass] as? String else {
            return
        }
        if targetClass == "CIImage" {
            filter.setValue(CIImage(data: msg.value.data), forKey: msg.key)
        } else if targetClass == "NSData" {
            if msg.key == "inputCubeData" && msg.process.boolValue {
                if msg.lut8x64.boolValue {
                    let data = try? createColorCubeData(inputImage: UIImage(data: msg.value.data)!, cubeDimension: 64)
                    filter.setValue(data, forKey: msg.key)
                } else {
                    let data = colorCubeFilterFromLUT(image: UIImage(data: msg.value.data)!, size: 64)
                    filter.setValue(data, forKey: msg.key)
                }
                return
            }
            filter.setValue(msg.value.data, forKey: msg.key)
        }
    }
    
    func setDataSourceValue(_ msg: FLTInputDataSourceValueMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return
        }
        guard msg.filterIndex.intValue >= 0 && msg.filterIndex.intValue < container.filters.count else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
            return
        }
        let filter = container.filters[msg.filterIndex.intValue]
        let asset = registrar.lookupKey(forAsset: msg.value)

        let path = Bundle.main.path(forResource: asset, ofType: nil) ?? msg.value
        
        guard let attributes = filter.attributes[msg.key] as? [AnyHashable: Any] else {
            return
        }
        guard let targetClass = attributes[kCIAttributeClass] as? String else {
            return
        }
        
        if targetClass == "CIImage" {
            filter.setValue(CIImage(contentsOf: URL(fileURLWithPath: path)), forKey: msg.key)
            return
        }
        
        if msg.key == "inputCubeData" && msg.process.boolValue {
            if msg.lut8x64.boolValue {
                let data = try? createColorCubeData(inputImage: UIImage(contentsOfFile: path)!, cubeDimension: 64)
                filter.setValue(data, forKey: msg.key)
            } else {
                let data = colorCubeFilterFromLUT(image: UIImage(contentsOfFile: path)!, size: 64)
                filter.setValue(data, forKey: msg.key)
            }
            return
        }
        
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "No data found",
                                              details: nil)
            return
        }
        if targetClass == "NSData" {
            filter.setValue(data, forKey: msg.key)
        }
    }
}

public enum ColorCubeError: Error {
       case incorrectImageSize
       case missingImageData
       case unableToCreateDataProvider
       case unableToGetBitmpaDataBuffer
   }

public func createColorCubeData(inputImage image: UIImage, cubeDimension: Int) throws -> NSData {
        
        // Set up some variables for calculating memory size.
        let imageSize = image.size
        let dim = Int(imageSize.width)
        let pixels = dim * dim
        let channels = 4

        // If the number of pixels doesn't match what's needed for the supplied cube dimension, abort.
        guard pixels == cubeDimension * cubeDimension * cubeDimension else {
            throw ColorCubeError.incorrectImageSize
        }
        
        // We don't need a sizeof() because uint_8t is explicitly 1 byte.
        let memSize = pixels * channels
        
        // Get the UIImage's backing CGImageRef
    guard let img = image.cgImage else {
            throw ColorCubeError.missingImageData
        }
        
        // Get a reference to the CGImage's data provider.
    guard let inProvider = img.dataProvider else {
            throw ColorCubeError.unableToCreateDataProvider
        }
        
    let inBitmapData = inProvider.data
    guard let inBuffer = CFDataGetBytePtr(inBitmapData) else {
        throw ColorCubeError.missingImageData
    }
        
        // Calculate the size of the float buffer and allocate it.
        let floatSize = memSize *  MemoryLayout<Float>.size
    let finalBuffer = unsafeBitCast(malloc(floatSize), to: UnsafeMutablePointer<Float>.self)
        
        // Convert the uint_8t to float. Note: a uint of 255 will convert to 255.0f.
        vDSP_vfltu8(inBuffer, 1, finalBuffer, 1, UInt(memSize))

        // Divide each float by 255.0 to get the 0-1 range we are looking for.
        var divisor = Float(255.0)
        vDSP_vsdiv(finalBuffer, 1, &divisor, finalBuffer, 1, UInt(memSize))
        
        // Don't copy the bytes, just have the NSData take ownership of the buffer.
        let cubeData = NSData(bytesNoCopy: finalBuffer, length: floatSize, freeWhenDone: true)
        
        return cubeData
        
    }

extension ImageVideoFilterFactory {
    func createShaderFilter(_ msg: FLTCreateShaderFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTFilterMessage? {
        return nil
    }
    
    func appendShaderFilter(_ msg: FLTAppendShaderFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
}


class AVAssetExportSessionStreamHandler: NSObject, FlutterStreamHandler {
    private let session: AVAssetExportSession
    private var eventSink: FlutterEventSink?
    private var timer: Timer?
    private let timeInterval: TimeInterval
    
    init(session: AVAssetExportSession, withTimeInterval timeInterval: Double) {
        self.session = session
        self.timeInterval = timeInterval / 1000.0
    }
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true, block: updateProgess(_:))
        session.exportAsynchronously(completionHandler: export)
        return nil
    }
    
    func updateProgess(_ timer: Timer) {
        eventSink?(session.progress)
    }
    
    func export() {
        timer?.invalidate()
        if session.error == nil && session.status == .completed {
            eventSink?(-100.0)
            
        } else {
            let message = String(describing: session.error)
            eventSink?(FlutterError.init(code: "image-video-filter",
                                         message: message,
                                         details: nil))
        }
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        timer?.invalidate()
        session.cancelExport()
        eventSink = nil
        timer = nil
        return nil
    }
}
