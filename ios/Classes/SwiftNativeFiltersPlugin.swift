import Flutter
import UIKit

public class SwiftNativeFiltersPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftNativeFiltersPlugin(registrar: registrar)
        registrar.addMethodCallDelegate(instance, channel: instance.factory.methodChannel)
        
        let imagePreviewFactory = FilterImagePreviewFactory(registrar: registrar, factory: instance.factory)
        registrar.register(imagePreviewFactory, withId: imagePreviewFactory.id)
        
        let videoPreviewFactory = FilterVideoPreviewFactory(registrar: registrar, factory: instance.factory)
        registrar.register(videoPreviewFactory, withId: videoPreviewFactory.id)
    }

    let factory: NativeFilterFactory

    init(registrar: FlutterPluginRegistrar){
        self.factory = NativeFilterFactory(registrar: registrar)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        factory.handle(call, result: result)
    }
    
}
