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
        final jsonCI =
            await _parseJsonFromAssets('assets/filters/CIFilters.json');
        final _filtersJson = FilterItem._fromJsonCI(jsonCI);
        List<FilterItem> _filters = [];
        _filters.add(_filtersJson);
        return _filters;
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        final jsonGI =
            await _parseJsonFromAssets('assets/filters/GlFilters.json');
        final jsonGPU =
            await _parseJsonFromAssets('assets/filters/GPUImageFilters.json');
        final _filtersJsonGI = FilterItem._fromJsonVideo(jsonGI);
        final _filtersJsonGPU = FilterItem._fromJsonImage(jsonGPU);
        List<FilterItem> _filters = [];
        _filters.add(_filtersJsonGI);
        _filters.add(_filtersJsonGPU);
        return _filters;
      }
    } catch (error) {
      print(error);
    }
    return [];
  }

  Future<Map<String, dynamic>> _parseJsonFromAssets(String assetsPath) async {
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}

class FilterItem {
  final String name;
  final String displayName;
  final String categories;
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
