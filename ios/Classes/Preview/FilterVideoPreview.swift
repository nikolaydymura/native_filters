import Flutter
import AVKit
import AVFoundation

class FilterVideoPreview: NSObject, FlutterPlatformView {
    let methodChannel: FlutterMethodChannel
    let registrar: FlutterPluginRegistrar
    let filtersFactory: NativeFilterFactory
    
    var playerViewController:AVPlayerViewController?
    
    private var player: AVPlayer?
    
    var selectedFilter: NativeFilter?

    init(frame: CGRect, registrar: FlutterPluginRegistrar, id: Int64, factory: NativeFilterFactory) {
        methodChannel = FlutterMethodChannel(
            name: "FilterVideoPreview_\(id)",
            binaryMessenger: registrar.messenger()
        )
        player = AVPlayer()
        player?.actionAtItemEnd = .none
        
        self.playerViewController = AVPlayerViewController()
        if #available(iOS 10.0, *) {
            self.playerViewController?.updatesNowPlayingInfoCenter = false
        }
        
        self.playerViewController?.player = player
        self.playerViewController?.view.frame = frame
        self.playerViewController?.showsPlaybackControls = true
        
        let viewController = (UIApplication.shared.delegate?.window??.rootViewController)!
        viewController.addChild(self.playerViewController!)

        filtersFactory = factory
        self.registrar = registrar
        super.init()
        methodChannel.setMethodCallHandler(callHandler)
    }

    func callHandler(call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "setFilter" {
            guard let index = call.arguments as? Int else {
                return result(FlutterError.init())
            }
            guard let filter = filtersFactory[index] else {
                return result(FlutterError.init())
            }
            selectedFilter = filter
            result(nil)
        } else if call.method == "update" {
            guard let item = selectedFilter?.processingVideo else {
                return
            }
            player?.replaceCurrentItem(with: item)
            player?.seek(to: CMTime.zero)
            player?.play()
            result(nil)
        } else if call.method == "release" {
            player?.pause()
            player = nil
            playerViewController?.view.removeFromSuperview()
            playerViewController?.removeFromParent()
            result(nil)
        }
    }

    func view() -> UIView {
        return playerViewController!.view
    }
}
