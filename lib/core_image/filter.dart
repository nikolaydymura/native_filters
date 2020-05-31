part of cupertino_native_filters;

class _CIFilter extends CIFilter {
  final String name;
  final int index;
  final _CIFilterGroup group;

  _CIFilter(this.name, this.index, this.group);

  Future<List<String>> get inputKeys => group._inputKeys(this);

  Future<Map<String, Map<String, String>>> get attributes async {
    List<String> inputKeys = await this.inputKeys;
    Map<String, Map<String, String>> attributes = Map();
    for (var key in inputKeys) {
      attributes[key] = await group._inputKeyDetails(this, key);
    }
    return attributes;
  }

  @override
  Future<Uint8List> get binaryOutput => group.binaryOutput;

  @override
  Future<void> export(File output) => group.export(output);

  @override
  Future<void> setAssetSource(String name)  => group.setAssetSource(name);

  @override
  Future<void> setFileSource(File path) => group.setFileSource(path);

  @override
  Future<void> setSource(Uint8List data) => group.setSource(data);
}
