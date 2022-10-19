import Flutter
import UIKit

public class SwiftNativeFiltersPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftNativeFiltersPlugin(registrar: registrar)
        let imagePreviewFactory = FilterImagePreviewFactory(registrar: registrar, factory: instance.factory)
        registrar.register(imagePreviewFactory, withId: imagePreviewFactory.id)
        
        let videoPreviewFactory = FilterVideoPreviewFactory(registrar: registrar, factory: instance.factory)
        registrar.register(videoPreviewFactory, withId: videoPreviewFactory.id)
    }

    let factory: ImageVideoFilterFactory

    init(registrar: FlutterPluginRegistrar){
        self.factory = ImageVideoFilterFactory(registrar: registrar)
        FLTImageVideoFilterFactoryApiSetup(registrar.messenger(), self.factory)
    }
    
}
