part of native_filters;

class _CIFilterGroup extends FilterGroup {
  static final String _mp4 = '.mp4';
  static final String _mov = '.mov';
  static final String _png = '.png';
  static final String _jpg = '.jpg';
  static final String _jpeg = '.jpeg';

  final int keyId;
  final MethodChannel _methodChannel;

  _CIFilterGroup(this.keyId)
      : _methodChannel = MethodChannel('CIFilter-$keyId');

  Future<Filter?> getFilter(int index) async {
    try {
      final name = await _methodChannel.invokeMethod('getFilter', index);
      final filter = _CIFilter(name, index, this);
      return filter;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<int> get filtersCount =>
      _methodChannel.invokeMethod<int>('getFiltersCount').then((value) => value ?? 0);

  Future<Filter?> addFilter(String name) async {
    try {
      final index = await _methodChannel.invokeMethod('addFilter', name);
      final filter = _CIFilter(name, index, this);
      return filter;
    } catch (_) {
      return null;
    }
  }

  Future<void> removeFilter(Filter filter) async {
    if (filter is _CIFilter) {
      return _methodChannel.invokeMethod('removeFilter', filter.index);
    }
  }

  Future<void> setFileSource(File path) async {
    if (_isVideo(path.path)) {
      return _methodChannel.invokeMethod('setVideoFileSource', path.path);
    }
    if (_isImage(path.path)) {
      return _methodChannel.invokeMethod('setImageFileSource', path.path);
    }
  }

  Future<void> setAssetSource(String name) async {
    if (_isVideo(name)) {
      return _methodChannel.invokeMethod('setVideoAssetSource', name);
    }
    if (_isImage(name)) {
      return _methodChannel.invokeMethod('setImageAssetSource', name);
    }
  }

  Future<void> setSource(Uint8List data) async {
    return _methodChannel.invokeMethod('setImageDataSource', data);
  }

  bool _isVideo(String name) {
    return name.endsWith(_mp4) == true || name.endsWith(_mov) == true;
  }

  bool _isImage(String name) {
    return name.endsWith(_png) == true ||
        name.endsWith(_jpg) == true ||
        name.endsWith(_jpeg) == true;
  }

  @override
  Future<Uint8List?> get binaryOutput async {
    return _methodChannel.invokeMethod<Uint8List>('exportData');
  }

  Future<void> export(File output) async {
    if (_isVideo(output.path)) {
      return _methodChannel.invokeMethod('exportVideo', output.path);
    }
    if (_isImage(output.path)) {
      return _methodChannel.invokeMethod('exportImage', output.path);
    }
    return Future.error('Not supported');
  }

  Future<List<String>> _inputKeys(_CIFilter filter) async {
    try {
      return await _methodChannel.invokeListMethod<String>(
          'inputKeys', filter.index).then((value) => value ?? <String>[]);
    } catch (error) {
      print(error);
    }
    return [];
  }

  Future<Map<String, String>> _inputKeyDetails(
      _CIFilter filter, String key) async {
    try {
      return await _methodChannel.invokeMapMethod<String, String>(
          'inputKeyDetails', [filter.index, key]).then((value) => value ?? <String,String>{});
    } catch (error) {
      print(error);
    }
    return {};
  }

  Future<void> _setValue(_CIFilter filter, String key, dynamic value) =>
      _methodChannel.invokeMethod('setValue', [filter.index, key, value]);
}
