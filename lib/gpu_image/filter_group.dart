part of native_filters;

class _GPUImageFilterGroup implements FilterGroup {
  static final String _png = '.png';
  static final String _jpg = '.jpg';
  static final String _mp4 = '.mp4';

  final int keyId;
  final MethodChannel _methodChannel;

  _GPUImageFilterGroup(this.keyId)
      : _methodChannel = MethodChannel('GPUFilter-$keyId');

  Future<Filter?> getFilter(int index) async {
    try {
      final name = await _methodChannel.invokeMethod('getFilter', index);
      final filter = _GPUImageFilter(name, index, this);
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
      final filter = _GPUImageFilter(name, index, this);
      return filter;
    } catch (_) {
      return null;
    }
  }

  Future<void> removeFilter(Filter filter) async {
    if (filter is _GPUImageFilter) {
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
    return Future.error('Not supported');
  }

  Future<void> setAssetSource(String name) async {
    if (_isVideo(name)) {
      return _methodChannel.invokeMethod('setVideoAssetSource', name);
    }
    if (_isImage(name)) {
      return _methodChannel.invokeMethod('setImageAssetSource', name);
    }
    return Future.error('Not supported');
  }

  Future<void> setSource(Uint8List data) async {
    return _methodChannel.invokeMethod('setImageDataSource', data);
  }

  bool _isImage(String name) {
    return name.endsWith(_png) || name.endsWith(_jpg);
  }

  bool _isVideo(String name) {
    return name.endsWith(_mp4) == true;
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

  Future<void> _setValue(_GPUImageFilter filter, String key, dynamic value) =>
      _methodChannel.invokeMethod('setValue', [filter.index, key, value]);
}
