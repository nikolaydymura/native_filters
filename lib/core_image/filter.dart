part of native_filters;

class _CIFilter extends Filter {
  final String name;
  final int index;
  final _CIFilterGroup group;
  Map<String, Map<String, String>> _attributes;

  _CIFilter(this.name, this.index, this.group);

  Future<List<String>> get inputKeys => group._inputKeys(this);

  Future<Map<String, Map<String, String>>> get attributes async {
    List<String> inputKeys = await this.inputKeys;
    Map<String, Map<String, String>> attributes = Map();
    for (var key in inputKeys) {
      attributes[key] = await group._inputKeyDetails(this, key);
    }
    _attributes = attributes;
    return _attributes;
  }

  @override
  Future<Uint8List> get binaryOutput => group.binaryOutput;

  @override
  Future<void> export(File output) => group.export(output);

  @override
  Future<void> setAssetSource(String name) => group.setAssetSource(name);

  @override
  Future<void> setFileSource(File path) => group.setFileSource(path);

  @override
  Future<void> setSource(Uint8List data) => group.setSource(data);

  @override
  Future<void> setScalarValue(String key, double value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = await this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    if (properties['CIAttributeType'] != 'CIAttributeTypeScalar') {
      return Future.error('$key is not CIAttributeTypeScalar');
    }
    if (properties['CIAttributeClass'] != 'NSNumber') {
      return Future.error('$key is not number format');
    }
    final min = double.parse(properties['CIAttributeSliderMin']);
    final max = double.parse(properties['CIAttributeSliderMax']);

    if (value < min || value > max) {
      return Future.error('$value must be in range [$min, $max]');
    }
    return group._setScalarValue(this, key, value);
  }
}
