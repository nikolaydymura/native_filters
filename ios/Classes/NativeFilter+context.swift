import Flutter
import CoreImage
import AVFoundation
import AVKit
import MobileCoreServices

final class Context {
    
    public static let shared = Context()
    
    public static var ciContext : CIContext { return Context.shared.ciContext ?? Context.shared.defaultCIContext }
    
    public static var options: [CIContextOption : Any] {
        #if targetEnvironment(simulator)
        return [
            CIContextOption.priorityRequestLow : true,
            CIContextOption.workingColorSpace : NSNull()
        ]
        #else
        return [
            CIContextOption.useSoftwareRenderer : false,
            CIContextOption.workingColorSpace : NSNull()
        ]
        #endif
    }
    
    public let defaultEgleContext : EAGLContext
    public let defaultCIContext : CIContext
    
    public var egleContext : EAGLContext?
    public var ciContext : CIContext?
    
    fileprivate init() {
        self.defaultEgleContext = EAGLContext(api: .openGLES2)!
        self.defaultCIContext = CIContext(eaglContext: self.defaultEgleContext, options: Context.options)
    }
}

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
