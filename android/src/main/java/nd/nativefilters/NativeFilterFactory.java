package nd.nativefilters;

import java.util.Arrays;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

public class NativeFilterFactory implements MethodChannel.MethodCallHandler {
    private static final String[] NAMES = {
            "GPUImage3x3ConvolutionFilter",
            "GPUImageAddBlendFilter",
            "GPUImageAlphaBlendFilter",
            "GPUImageBilateralBlurFilter",
            "GPUImageBoxBlurFilter",
            "GPUImageBrightnessFilter",
            "GPUImageBulgeDistortionFilter",
            "GPUImageCGAColorspaceFilter",
            "GPUImageChromaKeyBlendFilter",
            "GPUImageColorBalanceFilter",
            "GPUImageColorBlendFilter",
            "GPUImageColorBurnBlendFilter",
            "GPUImageColorDodgeBlendFilter",
            "GPUImageColorInvertFilter",
            "GPUImageColorMatrixFilter",
            "GPUImageContrastFilter",
            "GPUImageCrosshatchFilter",
            "GPUImageDarkenBlendFilter",
            "GPUImageDifferenceBlendFilter",
            "GPUImageDilationFilter",
            "GPUImageDirectionalSobelEdgeDetectionFilter",
            "GPUImageDissolveBlendFilter",
            "GPUImageDivideBlendFilter",
            "GPUImageEmbossFilter",
            "GPUImageExclusionBlendFilter",
            "GPUImageExposureFilter",
            "GPUImageFalseColorFilter",
            "GPUImageFilter",
            "GPUImageGammaFilter",
            "GPUImageGaussianBlurFilter",
            "GPUImageGlassSphereFilter",
            "GPUImageGrayscaleFilter",
            "GPUImageHalftoneFilter",
            "GPUImageHardLightBlendFilter",
            "GPUImageHazeFilter",
            "GPUImageHighlightShadowFilter",
            "GPUImageHueBlendFilter",
            "GPUImageHueFilter",
            "GPUImageKuwaharaFilter",
            "GPUImageLaplacianFilter",
            "GPUImageLevelsFilter",
            "GPUImageLightenBlendFilter",
            "GPUImageLinearBurnBlendFilter",
            "GPUImageLookupFilter",
            "GPUImageLuminanceFilter",
            "GPUImageLuminanceThresholdFilter",
            "GPUImageLuminosityBlendFilter",
            "GPUImageMonochromeFilter",
            "GPUImageMultiplyBlendFilter",
            "GPUImageNonMaximumSuppressionFilter",
            "GPUImageNormalBlendFilter",
            "GPUImageOpacityFilter",
            "GPUImageOverlayBlendFilter",
            "GPUImagePixelationFilter",
            "GPUImagePosterizeFilter",
            "GPUImageRGBDilationFilter",
            "GPUImageRGBFilter",
            "GPUImageSaturationBlendFilter",
            "GPUImageSaturationFilter",
            "GPUImageScreenBlendFilter",
            "GPUImageSepiaToneFilter",
            "GPUImageSharpenFilter",
            "GPUImageSketchFilter",
            "GPUImageSmoothToonFilter",
            "GPUImageSobelEdgeDetectionFilter",
            "GPUImageSobelThresholdFilter",
            "GPUImageSoftLightBlendFilter",
            "GPUImageSolarizeFilter",
            "GPUImageSourceOverBlendFilter",
            "GPUImageSphereRefractionFilter",
            "GPUImageSubtractBlendFilter",
            "GPUImageSwirlFilter",
            "GPUImageThresholdEdgeDetectionFilter",
            "GPUImageToneCurveFilter",
            "GPUImageToonFilter",
            "GPUImageTransformFilter",
            "GPUImageVibranceFilter",
            "GPUImageVignetteFilter",
            "GPUImageWeakPixelInclusionFilter",
            "GPUImageWhiteBalanceFilter",
            "GPUImageZoomBlurFilter",
    };
    private final MethodChannel channel;

    NativeFilterFactory(PluginRegistry.Registrar registrar) {
        channel = new MethodChannel(registrar.messenger(), "FilterFactory");
        channel.setMethodCallHandler(this);
    }

    NativeFilterFactory(FlutterPlugin.FlutterPluginBinding binding) {
        channel = new MethodChannel(binding.getFlutterEngine().getDartExecutor(), "FilterFactory");
        channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("availableFilters")) {
            result.success(getAvailableFilters());
        } else {
            result.notImplemented();
        }
    }

    private List<String> getAvailableFilters() {
        return Arrays.asList(NAMES);
    }

}
