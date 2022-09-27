import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:rxdart/rxdart.dart';

part 'sort_state.dart';

class SortCubit extends Cubit<SortState> {
  SortCubit() : super(SortInitial());

  @override
  Stream<SortState> get stream => super.stream.doOnListen(() {
        if (state is SortInitial) {
          fetchSortData(const FilterFactory());
        }
      });

  Future<void> fetchSortData(FilterFactory filtersFactory) async {
    List<FilterItem> filters = await filtersFactory.availableFilters;
    try {
      if (filters == null || filters.isEmpty) {
        emit(SortEmpty('There is no available filters'));
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
        SortSucceeded(_configurableFilters, _nonConfigurableFilters),
      );
    } catch (e) {
      emit(SortFailed(e.toString()));
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
  ];
}
