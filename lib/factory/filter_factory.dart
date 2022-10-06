part of native_filters;

class FilterFactory {
  static const MethodChannel _methodChannel =
      const MethodChannel('FilterFactory');

  const FilterFactory();

  Future<Filter?> create(String name) async {
    final group = await createGroup();
    try {
      final filter = await group.addFilter(name);
      return filter;
    } catch (error) {
      await dispose(group);
    }
    return null;
  }

  Future<FilterGroup> createGroup() async {
    try {
      final index = await _methodChannel.invokeMethod('create');
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return _CIFilterGroup(index);
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        return _GPUImageFilterGroup(index);
      }
    } catch (error) {
      print(error);
      rethrow;
    }
    throw UnsupportedError('$defaultTargetPlatform');
  }

  Future<void> dispose(Filterable filter) async {
    try {
      if (filter is _CIFilterGroup) {
        return await _methodChannel.invokeMethod('dispose', filter.keyId);
      }
      if (filter is _CIFilter) {
        return await _methodChannel.invokeMethod('dispose', filter.group.keyId);
      }
      if (filter is _GPUImageFilterGroup) {
        return await _methodChannel.invokeMethod('dispose', filter.keyId);
      }
      if (filter is _GPUImageFilter) {
        return await _methodChannel.invokeMethod('dispose', filter.group.keyId);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<List<FilterItem>> get availableFilters async {
    try {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        final jsonImageCI = giFilters.where((element) {
          final List<String> items = element["CICategoryStillImage"];
          if (items.contains('ClCategoryVideo') ||
              items.contains('CICategoryStillImage')) return true;
          return false;
        }).toList();
        List<FilterItem> _filters = [];

        for (int i = 0; i < jsonImageCI.length; i++) {
          final _filtersJsonCI = FilterItem._fromJsonImage(jsonImageCI[i]);
          _filters.add(_filtersJsonCI);
        }
        return _filters;
      }
      if (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.windows) {
        final jsonGI = giFilters.where((element) {
          final List<String> items = element["GlAttributeFilterCategories"];
          if (items.contains('GlCategoryVideo')) return true;
          return false;
        }).toList();
        final jsonGPU = gpuImageFilters.where((element) {
          final List<String> items = element["GPUAttributeFilterCategories"];
          if (items.contains('GPUCategoryImage')) return true;
          return false;
        }).toList();
        List<FilterItem> _filters = [];

        for (int i = 0; i < jsonGPU.length; i++) {
          final _filtersJsonGPU = FilterItem._fromJsonImage(jsonGPU[i]);
          _filters.add(_filtersJsonGPU);
        }
        for (int i = 0; i < jsonGI.length; i++) {
          final _filtersJsonGI = FilterItem._fromJsonVideo(jsonGI[i]);
          _filters.add(_filtersJsonGI);
        }

        return _filters;
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}

class FilterItem {
  final String name;
  final String displayName;
  final List<String> categories;
  final bool isVideoSupported;
  final bool isImageSupported;

  FilterItem._(this.name, this.displayName, this.categories,
      this.isVideoSupported, this.isImageSupported);

  factory FilterItem._fromJsonVideo(Map<String, dynamic> json) {
    return FilterItem._(
        json['GlAttributeFilterName'],
        json['GlAttributeFilterDisplayName'],
        json['GlAttributeFilterCategories'],
        true,
        false);
  }

  factory FilterItem._fromJsonImage(Map<String, dynamic> json) {
    return FilterItem._(
        json['GPUAttributeFilterName'],
        json['GPUAttributeFilterDisplayName'],
        json['GPUAttributeFilterCategories'],
        false,
        true);
  }

  factory FilterItem._fromJsonCI(Map<String, dynamic> json) {
    return FilterItem._(
        json['CIAttributeFilterName'],
        json['CIAttributeFilterDisplayName'],
        json['CIAttributeFilterCategories'],
        true,
        true);
  }
}
