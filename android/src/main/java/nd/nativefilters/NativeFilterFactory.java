package nd.nativefilters;

import java.util.ArrayList;
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
    private final List<NativeFilter> filters = new ArrayList<>();
    @Deprecated
    private PluginRegistry.Registrar registrar;
    private FlutterPlugin.FlutterPluginBinding binding;

    @Deprecated
    NativeFilterFactory(PluginRegistry.Registrar registrar) {
        this.registrar = registrar;
        this.channel = new MethodChannel(registrar.messenger(), "FilterFactory");
        this.channel.setMethodCallHandler(this);
    }

    NativeFilterFactory(FlutterPlugin.FlutterPluginBinding binding) {
        this.binding = binding;
        this.channel = new MethodChannel(binding.getBinaryMessenger(), "FilterFactory");
        this.channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("availableFilters")) {
            result.success(getAvailableFilters());
        } else if (call.method.equals("create")) {
            final int index = filters.size();
            NativeFilter filter = null;
            if (binding != null) {
                filter = new NativeFilter(binding, index);
            }
            if (registrar != null) {
                filter = new NativeFilter(registrar, index);
            }
            if (filter == null) {
                result.error("Engine not initialized", null, null);
                return;
            }
            filters.add(filter);
            result.success(index);
        } else if (call.method.equals("dispose")) {
            if (call.arguments instanceof Integer) {
                int index = (int) call.arguments;
                if (index < filters.size() && index >= 0) {
                    NativeFilter filter = filters.remove(index);
                    filter.destroy();
                    result.success(null);
                } else {
                    result.error("Invalid range", null, null);
                }
            } else {
                result.error("Invalid argument", null, null);
            }
        } else {
            result.notImplemented();
        }
    }

    private List<String> getAvailableFilters() {
        return Arrays.asList(NAMES);
    }

}
