import Flutter

class NativeFilterFactory: NSObject {

    let registrar: FlutterPluginRegistrar
    let methodChannel: FlutterMethodChannel
    private var filters: [NativeFilter] = []
    
    subscript(index: Int) -> NativeFilter? {
        guard index < filters.count && index >= 0 else {
            return nil
        }
        return filters[index]
    }

    init(registrar: FlutterPluginRegistrar) {
        self.registrar =  registrar
        self.methodChannel = FlutterMethodChannel(
            name: "FilterFactory",
            binaryMessenger: registrar.messenger()
        )
        super.init()

    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if (call.method == "create") {
            let index = filters.count
            let filter = NativeFilter(registrar: registrar, id: index)
            filters.append(filter)
            return result(index)
        } else if (call.method == "dispose") {
            guard let index = call.arguments as? Int else {
                return result(FlutterError.init())
            }
            guard index < filters.count && index >= 0 else {
                return result(FlutterError.init())
            }
            filters.remove(at: index)
            return result(nil)
        } else if (call.method == "availableFilters" ){
            let allFilterNames = CIFilter.filterNames(inCategories: nil)
            return result(allFilterNames)
        }
        result(FlutterError.init())
    }
}
