import Flutter
import AVKit
import AVFoundation

class FLTFrameUpdater: NSObject {
    private var textureId: Int64 = 0
    private(set) weak var registry: FlutterTextureRegistry?
    
    init(textureId: Int64, registry: FlutterTextureRegistry) {
        self.registry = registry
        self.textureId = textureId
    }
    
    @objc func onDisplayLink(_ link: CADisplayLink?) {
        registry?.textureFrameAvailable(textureId)
    }
}

class VideoPreview: NSObject, FlutterTexture {
    private var player: AVPlayer?
    private var videoOutput: AVPlayerItemVideoOutput?
    private var filter: NativeFilter?
    fileprivate var frameUpdater: FLTFrameUpdater?
    private var displayLink: CADisplayLink?
    
    override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd(notification: )), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    
    @objc func playerItemDidReachEnd(notification: Notification) {
        player?.seek(to: CMTime.zero)
        player?.play()
    }
    
    func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
        guard let videoOutput = videoOutput else {
            return nil
        }
        let outputItemTime = videoOutput.itemTime(forHostTime: CACurrentMediaTime())
        if videoOutput.hasNewPixelBuffer(forItemTime: outputItemTime) {
            if let buffer = videoOutput.copyPixelBuffer(forItemTime: outputItemTime, itemTimeForDisplay: nil) {
                return Unmanaged.passRetained(buffer)
            }
        }
        return nil
    }
    
    func setFilter(filter: NativeFilter) {
        self.filter = filter
    }
    
    func setSource(url: URL) {
        let player = self.player ?? AVPlayer()
        player.pause()
        player.actionAtItemEnd = .none
        let videoOutput = AVPlayerItemVideoOutput(pixelBufferAttributes: [
            kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA,
            kCVPixelBufferIOSurfacePropertiesKey as String : [:] ])
        
        let displayLink = CADisplayLink(target: frameUpdater, selector: #selector(FLTFrameUpdater.onDisplayLink(_:)))
        displayLink.add(to: RunLoop.current, forMode: .common)
        displayLink.isPaused = true
        
        let asset = AVAsset(url: url)
        let videoComposition = AVVideoComposition(asset: asset) { request in
            let source = request.sourceImage.clampedToExtent()
            let output = self.filter?.processing(source)?.cropped(to: request.sourceImage.extent)
            request.finish(with: output ?? source, context: self.filter?.currentContext)
        }
        let item = AVPlayerItem(asset: asset)
        item.add(videoOutput)
        item.videoComposition = videoComposition
        
        player.replaceCurrentItem(with: item)
        player.seek(to: CMTime.zero)
        self.videoOutput = videoOutput
        self.player = player
        self.displayLink = displayLink
        self.player?.play()
        self.displayLink?.isPaused = false
    }
    
    func pause() {
        player?.pause()
    }
    
    func stop() {
        displayLink?.isPaused = true
        displayLink?.remove(from: RunLoop.current, forMode: .common)
        player?.pause()
        player = nil
        displayLink = nil
        videoOutput = nil
        frameUpdater = nil
    }
    
    func play() {
        player?.play()
    }
}
class NewVideoPreview: NSObject, FLTVideoPreviewApi {
    private let registrar: FlutterPluginRegistrar
    private let registry: FlutterTextureRegistry
    private let filters: ImageVideoFilterFactory
    private var players: [Int64: VideoPreview]
    
    init(registrar: FlutterPluginRegistrar, filters: ImageVideoFilterFactory) {
        self.registrar = registrar
        self.registry = registrar.textures()
        self.filters = filters
        self.players = [:]
    }
    
    func create(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTPreviewCreateMessage? {
        let player = VideoPreview()
        let textureId = registry.register(player)
        player.frameUpdater = FLTFrameUpdater(textureId: textureId, registry: registry)
        players[textureId] = player
        return FLTPreviewCreateMessage.make(withTextureId: textureId as NSNumber)
    }
    
    func setFilter(_ msg: FLTActivateFilterPreviewMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let filter = filters[msg.filterId] else {
            return
        }
        filter.currentContext = CIContext.selectVideoContext(msg.context)
        players[msg.textureId.int64Value]?.setFilter(filter: filter)
    }
    
    func setSource(_ msg: FLTPreviewSourceMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        let asset = registrar.lookupKey(forAsset: msg.path)
        
        let path = Bundle.main.path(forResource: asset, ofType: nil) ?? msg.path
        players[msg.textureId.int64Value]?.setSource(url: URL(fileURLWithPath: path))
    }
    
    func play(_ msg: FLTPreviewPlayMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        players[msg.textureId.int64Value]?.play()
    }
    
    func pause(_ msg: FLTPreviewPauseMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        players[msg.textureId.int64Value]?.pause()
    }
    
    func dispose(_ msg: FLTPreviewDisposeMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        var player = players.removeValue(forKey: msg.textureId.int64Value)
        player?.stop()
        player = nil
    }
    
    
}

class VideoPreview1: NSObject, FlutterPlatformView {
    let methodChannel: FlutterMethodChannel
    let registrar: FlutterPluginRegistrar
    let filtersFactory: ImageVideoFilterFactory
    
    var playerViewController:AVPlayerViewController?
    
    private var player: AVPlayer?
    
    var selectedFilter: NativeFilter?
    
    init(frame: CGRect, registrar: FlutterPluginRegistrar, id: Int64, factory: ImageVideoFilterFactory) {
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

public class FilterVideoPreviewFactory : NSObject, FlutterPlatformViewFactory {
    let registrar: FlutterPluginRegistrar
    let factory: ImageVideoFilterFactory
    let id: String = "FilterVideoPreview"
    
    init(registrar: FlutterPluginRegistrar, factory: ImageVideoFilterFactory) {
        self.registrar = registrar
        self.factory = factory
    }
    
    public func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return VideoPreview1(frame: frame, registrar: registrar, id: viewId, factory: factory)
    }
}
