import Flutter
import UIKit

public class SwiftNativeFiltersPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftNativeFiltersPlugin(messenger: registrar.messenger())
        registrar.addMethodCallDelegate(instance, channel: instance.factory.methodChannel)
        
        
        let imagePreviewFactory = FilterImagePreviewFactory(messenger: registrar.messenger(), factory: instance.factory)
        registrar.register(imagePreviewFactory, withId: imagePreviewFactory.id)
    }

    let factory: NativeFilterFactory

    init(messenger: FlutterBinaryMessenger){
        self.factory = NativeFilterFactory(messenger: messenger)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        factory.handle(call, result: result)
    }
    
}
