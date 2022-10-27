import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

part 'available_filters_state.dart';

class AvailableFiltersCubit extends Cubit<AvailableFiltersState> {
  AvailableFiltersCubit() : super(AvailableFiltersStateInitial());

  final filtersFactory = FilterFactory();

  @override
  Stream<AvailableFiltersState> get stream => super.stream.doOnListen(() {
        if (state is AvailableFiltersStateInitial) {
          fetchSortData();
        }
      });

  void fetchSortData() {
    try {
      emit(AvailableFiltersStateWaiting());

      final items = FilterFactory.availableFilters;

      List<FilterItem> _favoritesFilters = items.where((e) {
        return e.name.toLowerCase().contains('monochrome') ||
            e.name.toLowerCase().contains('cube') ||
            e.name.toLowerCase().contains('lookup');
      }).toList();

      List<FilterItem> _configurableFilters =
          items.where((e) => e.isConfigurable).toList();
      List<FilterItem> _nonConfigurableFilters =
          items.whereNot((e) => e.isConfigurable).toList();
      List<FilterItem> _videoSupportedFilters =
          items.where((e) => e.isVideoSupported).toList();
      List<FilterItem> _imageSupportedFilters =
          items.where((e) => e.isImageSupported).toList();

      emit(
        AvailableFiltersStateSucceeded(
            _favoritesFilters,
            _configurableFilters,
            _nonConfigurableFilters,
            _videoSupportedFilters,
            _imageSupportedFilters),
      );
    } catch (e) {
      emit(AvailableFiltersStateFailed(e.toString()));
    }
  }
}

final List<String> _verified = [
  'GPUImageAlphaBlendFilter',
  'GPUImageCGAColorspaceFilter',
  'GPUImageColorBlendFilter',
  'GPUImageColorInvertFilter',
  'GPUImageDilationFilter',
  'GPUImageDirectionalSobelEdgeDetectionFilter',
  'GPUImageDissolveBlendFilter',
  'GPUImageDivideBlendFilter',
  'GPUImageGrayscaleFilter',
  'GPUImageNonMaximumSuppressionFilter',
  'GPUImageHueBlendFilter',
  'GPUImageLuminanceFilter',
  'GPUImageOverlayBlendFilter',
  'GPUImageRGBDilationFilter',
  'GPUImageSaturationBlendFilter',
  'GPUImageSepiaToneFilter',
  'GPUImageSketchFilter',
  'GPUImageSoftLightBlendFilter',
  'GPUImageWeakPixelInclusionFilter',
  'GPUImageBoxBlurFilter',
  'GPUImageBulgeDistortionFilter',
  'GPUImageContrastFilter',
  'GPUImageCrosshatchFilter',
  'GPUImageEmbossFilter',
  'GPUImageExposureFilter',
  'GPUImageFalseColorFilter',
  'GPUImageGaussianBlurFilter',
  'GPUImageGlassSphereFilter',
  'GPUImageHalftoneFilter',
  'GPUImageHazeFilter',
  'GPUImageHueFilter',
  'GPUImageKuwaharaFilter',
  'GPUImageLaplacianFilter',
  'GPUImageLuminanceThresholdFilter',
  'GPUImageMonochromeFilter',
  'GPUImageSmoothToonFilter',
  'GPUImageSobelEdgeDetectionFilter',
  'GPUImageSobelThresholdFilter',
  'GPUImageSolarizeFilter',
  'GPUImageSphereRefractionFilter',
  'GPUImageSwirlFilter',
  'GPUImageThresholdEdgeDetectionFilter',
  'GPUImageToonFilter',
  'GPUImageVignetteFilter',
  'GPUImageZoomBlurFilter',
  'GlCGAColorspaceFilter',
  'GlGrayScaleFilter',
  'GlInvertFilter',
  'GlLuminanceFilter',
  'GlOverlayFilter',
  'GlSepiaFilter',
  'GlSolarizeFilter',
  'GlSphereRefractionFilter',
  'GlSwirlFilter',
  'GlVignetteFilter',
  'GlWeakPixelInclusionFilter',
  'GlWhiteBalanceFilter',
  'GlZoomBlurFilter',
];

@Deprecated('Should be removed after filters verified')
bool isFilterVerified(String name) {
  if (_verified.contains(name)) {
    return true;
  }
  return false;
}
