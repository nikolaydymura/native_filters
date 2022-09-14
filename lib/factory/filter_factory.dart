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
        final filters =
            await _methodChannel.invokeListMethod<String>('availableFilters');
        return filters
                ?.where((e) => !_ciUnsupportedFilters.contains(e))
                .map((e) => FilterItem._(e, true, true))
                .toList() ??
            [];
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        return [
          ..._glFilters.map((e) => FilterItem._(e, true, false)),
          ..._gpuFilters.map((e) => FilterItem._(e, false, true)),
          ..._gpuEffects.map((e) => FilterItem._(e, false, true))
        ];
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}

class FilterItem {
  final String name;
  final bool isVideoSupported;
  final bool isImageSupported;

  FilterItem._(this.name, this.isVideoSupported, this.isImageSupported);
}
