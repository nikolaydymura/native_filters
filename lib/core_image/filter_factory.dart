part of cupertino_native_filters;

class CIFilterFactory {
  static const MethodChannel _methodChannel =
      const MethodChannel('CIFilterFactory');

  const CIFilterFactory();

  Future<CIFilter> create(String name) async {
    final group = await createGroup();
    try {
      final filter = await group.addFilter(name);
      return filter;
    } catch (error) {
      await dispose(group);
    }
    return null;
  }

  Future<CIFilterGroup> createGroup() async {
    try {
      final index = await _methodChannel.invokeMethod('create');
      return _CIFilterGroup(index);
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<void> dispose(CIFilterable filter) async {
    try {
      if (filter is _CIFilterGroup) {
        return await _methodChannel.invokeMethod('dispose', filter.keyId);
      }
      if (filter is _CIFilter) {
        return await _methodChannel.invokeMethod('dispose', filter.group.keyId);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<List<String>> get availableFilters async {
    try {
      return await _methodChannel.invokeListMethod<String>('availableFilters');
    } catch (error) {
      print(error);
    }
    return [];
  }
}
