part of native_filters;

class _GPUImageFilter extends Filter {
  final String name;
  final int index;
  final _GPUImageFilterGroup group;

  _GPUImageFilter(this.name, this.index, this.group);

  Future<Map<String, Map<String, String>>> get attributes => Future.value(Map.identity());

  @override
  Future<Uint8List> get binaryOutput => group.binaryOutput;

  @override
  Future<void> export(File output) => group.export(output);

  @override
  Future<List<String>> get inputKeys => Future.value([]);

  @override
  Future<void> setAssetSource(String name) => group.setAssetSource(name);

  @override
  Future<void> setFileSource(File path) => group.setFileSource(path);

  @override
  Future<void> setScalarValue(String key, double value) {
    throw UnimplementedError();
  }

  @override
  Future<void> setSource(Uint8List data) => group.setSource(data);

}