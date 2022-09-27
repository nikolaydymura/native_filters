import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:rxdart/rxdart.dart';

part 'sort_state.dart';

class SortCubit extends Cubit<SortState> {
  SortCubit() : super(SortInitial());

  @override
  Stream<SortState> get stream => super.stream.doOnListen(() {
        final filtersFactory = const FilterFactory();
        if (state is SortInitial) {
          fetchSortData(filtersFactory);
        }
      });

  Future<void> fetchSortData(FilterFactory filtersFactory) async {
    List<FilterItem> filters = await filtersFactory.availableFilters;
    try {
      if (filters == null || filters.isEmpty) {
        emit(SortEmpty('There is no available filters'));
      }
      List<FilterItem> sortedFilters = [];

      print((filters.length));
      //TODO: change to collection where
      for (int i = 0; i < filters.length; i++) {
        for (int j = 0; j < _configurable.length; j++) {
          if (filters[i].name == _configurable[j]) {
            sortedFilters[i] = filters[i];
          }
        }
      }
      emit(SortSucceeded(sortedFilters));
    } catch (e) {
      emit(SortFailed(e.toString()));
    }
  }

  final List<String> _configurable = [
    'GPUImageAlphaBlendFilter',
    'GPUImageDilationFilter',
    'GPUImageDissolveBlendFilter',
    'GPUImageLevelsFilter',
    'GPUImageRGBDilationFilter',
    'GPUImageSepiaToneFilter',
    'GPUImage3x3ConvolutionFilter',
    'GPUImageBilateralBlurFilter',
    'GPUImageBoxBlurFilter',
    'GPUImageBrightnessFilter',
    'GPUImageBulgeDistortionFilter',
    'GPUImageChromaKeyBlendFilter',
    'GPUImageColorBalanceFilter',
    'GPUImageColorMatrixFilter',
    'GPUImageContrastFilter',
    'GPUImageCrosshatchFilter',
    'GPUImageEmbossFilter',
    'GPUImageExposureFilter',
    'GPUImageFalseColorFilter',
    'GPUImageGammaFilter',
    'GPUImageGaussianBlurFilter',
    'GPUImageGlassSphereFilter',
    'GPUImageHalftoneFilter',
    'GPUImageHazeFilter',
    'GPUImageHighlightShadowFilter',
    'GPUImageHueFilter',
    'GPUImageKuwaharaFilter',
    'GPUImageLaplacianFilter',
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
    'GPUImageToneCurveFilter',
    'GPUImageToonFilter',
    'GPUImageTransformFilter',
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
    'GlVignetteFilter',
    'GlWatermarkFilter',
    'GlWhiteBalanceFilter',
    'GlZoomBlurFilter',
  ];
}
