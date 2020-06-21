part of native_filters;

class FilterFactory {
  static const MethodChannel _methodChannel =
      const MethodChannel('FilterFactory');

  const FilterFactory();

  Future<Filter> create(String name) async {
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
    }
    return null;
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

  Future<List<String>> get availableFilters async {
    try {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        final filters = await _methodChannel.invokeListMethod<String>(
            'availableFilters');
        return filters.where((e) => !_ciUnsupportedFilters.contains(e)).toList();
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        return [..._gpuFilters, ..._gpuEffects];
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}
