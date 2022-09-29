import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:rxdart/rxdart.dart';

part 'available_filters_state.dart';

class AvailableFiltersCubit extends Cubit<AvailableFiltersState> {
  AvailableFiltersCubit() : super(AvailableFiltersStateInitial());

  @override
  Stream<AvailableFiltersState> get stream => super.stream.doOnListen(() {
        if (state is AvailableFiltersStateInitial) {
          fetchSortData(const FilterFactory());
        }
      });

  Future<void> fetchSortData(FilterFactory filtersFactory) async {
    List<FilterItem> filters = await filtersFactory.availableFilters;
    try {
      if (filters == null || filters.isEmpty) {
        emit(AvailableFiltersStateEmpty('There is no available filters'));
      }
      List<FilterItem> _configurableFilters = [];
      List<FilterItem> _nonConfigurableFilters = [];

      //TODO: change to collection where
      for (int i = 0; i < filters.length; i++) {
        if (_configurable.contains(filters[i].name)) {
          _configurableFilters.add(filters[i]);
        }
        if (_nonConfigurable.contains(filters[i].name)) {
          _nonConfigurableFilters.add(filters[i]);
        }
      }
      emit(
        AvailableFiltersStateSucceeded(
          _configurableFilters,
          _nonConfigurableFilters,
        ),
      );
    } catch (e) {
      emit(AvailableFiltersStateFailed(e.toString()));
    }
  }

  final List<String> _configurable = [
    'GPUImageBilateralBlurFilter',
    'GPUImageBoxBlurFilter',
    'GPUImageBrightnessFilter',
    'GPUImageBulgeDistortionFilter',
    'GPUImageChromaKeyBlendFilter',
    'GPUImageColorMatrixFilter',
    'GPUImageContrastFilter',
    'GPUImageCrosshatchFilter',
    'GPUImageEmbossFilter',
    'GPUImageExposureFilter',
    'GPUImageGammaFilter',
    'GPUImageGaussianBlurFilter',
    'GPUImageGlassSphereFilter',
    'GPUImageHalftoneFilter',
    'GPUImageHazeFilter',
    'GPUImageHighlightShadowFilter',
    'GPUImageHueFilter',
    'GPUImageKuwaharaFilter',
    'GPUImageLookupFilter',
    'GPUImageLuminanceThresholdFilter',
    'GPUImageMonochromeFilter',
    'GPUImageOpacityFilter',
    'GPUImagePixelationFilter',
    'GPUImagePosterizeFilter',
    'GPUImageRGBFilter',
    'GPUImageSaturationFilter',
    'GPUImageSharpenFilter',
    'GPUImageSmoothToonFilter',
    'GPUImageSobelEdgeDetectionFilter',
    'GPUImageSobelThresholdFilter',
    'GPUImageSolarizeFilter',
    'GPUImageSphereRefractionFilter',
    'GPUImageSwirlFilter',
    'GPUImageThresholdEdgeDetectionFilter',
    'GPUImageToonFilter',
    'GPUImageVibranceFilter',
    'GPUImageVignetteFilter',
    'GPUImageWhiteBalanceFilter',
    'GPUImageZoomBlurFilter',
    'GlBilateralFilter',
    'GlBoxBlurFilter',
    'GlBrightnessFilter',
    'GlBulgeDistortionFilter',
    'GlContrastFilter',
    'GlCrosshatchFilter',
    'GlExposureFilter',
    'GlGammaFilter',
    'GlGaussianBlurFilter',
    'GlHalftoneFilter',
    'GlHazeFilter',
    'GlHighlightShadowFilter',
    'GlHueFilter',
    'GlLookUpTableFilter',
    'GlLuminanceThresholdFilter',
    'GlMonochromeFilter',
    'GlOpacityFilter',
    'GlOverlayFilter',
    'GlPixelationFilter',
    'GlPosterizeFilter',
    'GlRGBFilter',
    'GlSaturationFilter',
    'GlSharpenFilter',
    'GlSolarizeFilter',
    'GlSphereRefractionFilter',
    'GlSwirlFilter',
    'GlThreex3TextureSamplingFilter',
    'GlToneCurveFilter',
    'GlToneFilter',
    'GlVibranceFilter',
    'GlWatermarkFilter',
    'CIBoxBlur',
    'CIDepthBlurEffect',
    'CIDiscBlur',
    'CIGaussianBlur',
    'CIMaskedVariableBlur',
    'CIMorphologyGradient',
    'CIMorphologyMaximum',
    'CIMorphologyMinimum',
    'CIMorphologyRectangleMaximum',
    'CIMorphologyRectangleMinimum',
    'CIMotionBlur',
    'CINoiseReduction',
    'CIZoomBlur',
    'CIColorClamp',
    'CIColorControls',
    'CIColorMatrix',
    'CIColorPolynomial',
    'CIColorThreshold',
    'CIExposureAdjust',
    'CIGammaAdjust',
    'CIHueAdjust',
    'CITemperatureAndTint',
    'CIToneCurve',
    'CIVibrance',
    'CIWhitePointAdjust',
    'CIColorCrossPolynomial',
    'CIColorCube',
    'CIColorCubeWithColorSpace',
    'CIColorCubesMixedWithMask',
    'CIColorCurves',
    'CIColorMonochrome',
    'CIColorPosterize',
    'CIDither',
    'CIDocumentEnhancer',
    'CIFalseColor',
    'CILabDeltaE',
    'CIPaletteCentroid',
    'CIPalettize',
    'CISepiaTone',
    'CIVignette',
    'CIVignetteEffect',
    'CIBumpDistortion',
    'CIBumpDistortionLinear',
    'CICameraCalibrationLensCorrection',
    'CICircleSplashDistortion',
    'CICircularWrap',
    'CIDisplacementDistortion',
    'CIDroste',
    'CIGlassDistortion',
    'CIGlassLozenge',
    'CIHoleDistortion',
    'CILightTunnel',
    'CINinePartStretched',
    'CINinePartTiled',
    'CIPinchDistortion',
    'CIStretchCrop',
    'CITorusLensDistortion',
    'CITwirlDistortion',
    'CIVortexDistortion',
    'CIAttributedTextImageGenerator',
    'CIAztecCodeGenerator',
    'CICheckerboardGenerator',
    'CICode128BarcodeGenerator',
    'CIConstantColorGenerator',
    'CILenticularHaloGenerator',
    'CIMeshGenerator',
    'CIPDF417BarcodeGenerator',
    'CIQRCodeGenerator',
    'CIRoundedRectangleGenerator',
    'CIStarShineGenerator',
    'CIStripesGenerator',
    'CISunbeamsGenerator',
    'CITextImageGenerator',
    'CIAffineTransform',
    'CIBicubicScaleTransform',
    'CICrop',
    'CIEdgePreserveUpsampleFilter',
    'CIKeystoneCorrectionCombined',
    'CIKeystoneCorrectionHorizontal',
    'CIKeystoneCorrectionVertical',
    'CILanczosScaleTransform',
    'CIPerspectiveCorrection',
    'CIPerspectiveRotate',
    'CIPerspectiveTransform',
    'CIPerspectiveTransformWithExtent',
    'CIStraightenFilter',
    'CIGaussianGradient',
    'CIHueSaturationValueGradient',
    'CILinearGradient',
    'CIRadialGradient',
    'CISmoothLinearGradient',
    'CICMYKHalftone',
    'CICircularScreen',
    'CIDotScreen',
    'CIHatchedScreen',
    'CILineScreen',
    'CIAreaAverage',
    'CIAreaHistogram',
    'CIAreaMaximum',
    'CIAreaMaximumAlpha',
    'CIAreaMinMax',
    'CIAreaMinMaxRed',
    'CIAreaMinimum',
    'CIAreaMinimumAlpha',
    'CIColumnAverage',
    'CIHistogramDisplayFilter',
    'CIKMeans',
    'CIRowAverage',
    'CISharpenLuminance',
    'CIUnsharpMask',
    'CIBloom',
    'CIConvolution3X3',
    'CIConvolution5X5',
    'CIConvolution7X7',
    'CIConvolution9Horizontal',
    'CIConvolution9Vertical',
    'CICoreMLModelFilter',
    'CICrystallize',
    'CIDepthOfField',
    'CIEdgeWork',
    'CIEdges',
    'CIGloom',
    'CIHeightFieldFromMask',
    'CIHexagonalPixellate',
    'CIHighlightShadowAdjust',
    'CILineOverlay',
    'CIMix',
    'CIPixellate',
    'CIPointillize',
    'CIShadedMaterial',
    'CISpotColor',
    'CISpotLight',
    'CIAffineClamp',
    'CIAffineTile',
    'CIClamp',
    'CIEightfoldReflectedTile',
    'CIFourfoldReflectedTile',
    'CIFourfoldRotatedTile',
    'CIFourfoldTranslatedTile',
    'CIGlideReflectedTile',
    'CIKaleidoscope',
    'CIOpTile',
    'CIParallelogramTile',
    'CIPerspectiveTile',
    'CISixfoldReflectedTile',
    'CISixfoldRotatedTile',
    'CITriangleKaleidoscope',
    'CITriangleTile',
    'CITwelvefoldReflectedTile',
    'CIAccordionFoldTransition',
    'CIBarsSwipeTransition',
    'CICopyMachineTransition',
    'CIDisintegrateWithMaskTransition',
    'CIDissolveTransition',
    'CIFlashTransition',
    'CIModTransition',
    'CIPageCurlTransition',
    'CIPageCurlWithShadowTransition',
    'CIRippleTransition',
    'CISwipeTransition',
    'CIGuidedFilter',
  ];

  final List<String> _nonConfigurable = [
    'GPUImageAddBlendFilter',
    'GPUImageAlphaBlendFilter',
    'GPUImageCGAColorspaceFilter',
    'GPUImageColorBlendFilter',
    'GPUImageColorBurnBlendFilter',
    'GPUImageColorDodgeBlendFilter',
    'GPUImageColorInvertFilter',
    'GPUImageDarkenBlendFilter',
    'GPUImageDifferenceBlendFilter',
    'GPUImageDilationFilter',
    'GPUImageDirectionalSobelEdgeDetectionFilter',
    'GPUImageDissolveBlendFilter',
    'GPUImageDivideBlendFilter',
    'GPUImageExclusionBlendFilter',
    'GPUImageGrayscaleFilter',
    'GPUImageLevelsFilter',
    'GPUImageLightenBlendFilter',
    'GPUImageLinearBurnBlendFilter',
    'GPUImageMultiplyBlendFilter',
    'GPUImageNonMaximumSuppressionFilter',
    'GPUImageNormalBlendFilter',
    'GPUImageHardLightBlendFilter',
    'GPUImageHueBlendFilter',
    'GPUImageLuminanceFilter',
    'GPUImageLuminosityBlendFilter',
    'GPUImageOverlayBlendFilter',
    'GPUImageRGBDilationFilter',
    'GPUImageSaturationBlendFilter',
    'GPUImageScreenBlendFilter',
    'GPUImageSepiaToneFilter',
    'GPUImageSketchFilter',
    'GPUImageSoftLightBlendFilter',
    'GPUImageSourceOverBlendFilter',
    'GPUImageSubtractBlendFilter',
    'GPUImageWeakPixelInclusionFilter',
    'GPUImage3x3ConvolutionFilter',
    'GPUImageColorBalanceFilter',
    'GPUImageFalseColorFilter',
    'GPUImageLaplacianFilter',
    'GPUImageToneCurveFilter',
    'GPUImageTransformFilter',
    'GlCGAColorspaceFilter',
    'GlGrayScaleFilter',
    'GlInvertFilter',
    'GlLuminanceFilter',
    'GlSepiaFilter',
    'GlVignetteFilter',
    'GlWeakPixelInclusionFilter',
    'GlWhiteBalanceFilter',
    'GlZoomBlurFilter',
    'CIMedianFilter',
    'CIColorAbsoluteDifference',
    'CIColorThresholdOtsu',
    'CIDepthToDisparity',
    'CIDisparityToDepth',
    'CILinearToSRGBToneCurve',
    'CISRGBToneCurveToLinear',
    'CIColorInvert',
    'CIColorMap',
    'CIMaskToAlpha',
    'CIMaximumComponent',
    'CIMinimumComponent',
    'CIPhotoEffectChrome',
    'CIPhotoEffectFade',
    'CIPhotoEffectInstant',
    'CIPhotoEffectMono',
    'CIPhotoEffectNoir',
    'CIPhotoEffectProcess',
    'CIPhotoEffectTonal',
    'CIPhotoEffectTransfer',
    'CIThermal',
    'CIXRay',
    'CIAdditionCompositing',
    'CIColorBlendMode',
    'CIColorBurnBlendMode',
    'CIColorDodgeBlendMode',
    'CIDarkenBlendMode',
    'CIDifferenceBlendMode',
    'CIDivideBlendMode',
    'CIExclusionBlendMode',
    'CIHardLightBlendMode',
    'CIHueBlendMode',
    'CILightenBlendMode',
    'CILinearBurnBlendMode',
    'CILinearDodgeBlendMode',
    'CILuminosityBlendMode',
    'CIMaximumCompositing',
    'CIMinimumCompositing',
    'CIMultiplyBlendMode',
    'CIMultiplyCompositing',
    'CIOverlayBlendMode',
    'CIPinLightBlendMode',
    'CISaturationBlendMode',
    'CIScreenBlendMode',
    'CISoftLightBlendMode',
    'CISourceAtopCompositing',
    'CISourceInCompositing',
    'CISourceOutCompositing',
    'CISourceOverCompositing',
    'CISubtractBlendMode',
    'CIBarcodeGenerator',
    'CIRandomGenerator',
    'CIBlendWithAlphaMask',
    'CIBlendWithBlueMask',
    'CIBlendWithMask',
    'CIBlendWithRedMask',
    'CIComicEffect',
    'CIGaborGradients',
    'CISaliencyMapFilter',
    'CISampleNearest',
  ];
}