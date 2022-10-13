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

  static Iterable<FilterItem> get availableFilters {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return _kCoreImageFilters.where((element) {
        final List<String> items = element["AttributeFilterCategories"];
        return items.contains('CategoryVideo') ||
            items.contains('CategoryStillImage');
      }).map(FilterItem._fromJson);
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      final videos = _kGPUVideoFilters.where((element) {
        final List<String> items = element["AttributeFilterCategories"];
        return items.contains('CategoryVideo');
      }).map(FilterItem._fromJson);

      final images = _kGPUImageFilters.where((element) {
        final List<String> items = element["AttributeFilterCategories"];
        return items.contains('CategoryStillImage');
      }).map(FilterItem._fromJson);

      return CombinedIterableView([videos, images]);
    }
    return [];
  }

  static Iterable<FilterInput>? filterAttributes({required String filterName}) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final filter = _kCoreImageFilters
          .firstWhereOrNull((e) => e['AttributeFilterName'] == filterName);
      return filter?.entries
          .where((e) => e.key.startsWith('input') && e.key != 'inputImage')
          .map(FilterInput._fromEntry);
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      final filter = [..._kGPUImageFilters, ..._kGPUVideoFilters]
          .firstWhereOrNull((e) => e['AttributeFilterName'] == filterName);
      return filter?.entries
          .where((e) => e.key.startsWith('input') && e.key != 'inputImage')
          .map(FilterInput._fromEntry);
    }
    return null;
  }
}

class FilterItem {
  final String name;
  final String displayName;
  final Set<String> categories;
  final Set<String> inputs;

  bool get isVideoSupported => categories.contains('CategoryVideo');

  bool get isImageSupported => categories.contains('CategoryStillImage');

  bool get isConfigurable => inputs.isNotEmpty;

  FilterItem._(this.name, this.displayName, this.categories, this.inputs);

  factory FilterItem._fromJson(Map<String, dynamic> json) {
    return FilterItem._(
        json['AttributeFilterName'],
        json['AttributeFilterDisplayName'],
        json['AttributeFilterCategories'].toSet(),
        json.keys
            .where((e) => e.startsWith('input'))
            .whereNot((e) => e == 'inputImage')
            .toSet());
  }
}

class FilterInput {
  final String name;
  final Map<String, dynamic> data;

  FilterInput._(this.name, this.data);

  factory FilterInput._fromEntry(MapEntry<String, dynamic> json) {
    return FilterInput._(json.key, Map<String, dynamic>.from(json.value));
  }
}
