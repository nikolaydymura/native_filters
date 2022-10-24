import Flutter

class ImageVideoFilterFactory: NSObject, FLTImageVideoFilterFactoryApi {
    
    private var filters: [Int64: NativeFilter] = [:]
    private let registrar: FlutterPluginRegistrar
    private var filterSequence: Int64 = 0
    
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
    func exportData(_ msg: FLTFilterMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTExportDataMessage? {
        guard let container = filters[msg.filterId.int64Value] else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil)
           return nil
        }
        guard let image = container.processedImage?.asData(pathExtension: container.originalImage?.pathExtension) else {
            error.pointee = FlutterError.init(code: "image-video-filter",
                                              message: "Failed to export data",
                                              details: nil)
           return nil
        }
        return FLTExportDataMessage.make(withFilterId: msg.filterId, data: FlutterStandardTypedData(bytes: image))
    }
    
    func exportFile(_ msg: FLTExportFileMessage, completion: @escaping (FlutterError?) -> Void) {
        guard let container = filters[msg.filterId.int64Value] else {
            completion(FlutterError.init(code: "image-video-filter",
                                              message: "Filter not found",
                                              details: nil))
           return
        }
        if msg.video.boolValue {
            let output = URL(fileURLWithPath: msg.path)
            guard let exporter = container.exportVideoSession else {
                completion(FlutterError.init(code: "image-video-filter",
                                                   message: "Export session not configured",
                                                   details: nil))
                return
            }
            exporter.outputURL = output
            return exporter.exportAsynchronously { () -> Void in
                if exporter.error == nil && exporter.status == .completed {
                    completion(nil)

                } else {
                    let message = String(describing: exporter.error)
                    completion(FlutterError.init(code: "image-video-filter",
                                                 message: message,
                                                 details: nil))
                }
            }
        } else {
            let output = URL(fileURLWithPath: msg.path)
            container.processedImage?.asData(pathExtension: output.pathExtension, output: output)
            completion(nil)
        }
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
