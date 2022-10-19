part of native_filters;

class _CIFilter extends Filter {
  final FilterGroup group;
  Map<String, Map<String, String>>? _attributes;

  _CIFilter(super.name, super.id, this.group);

  Map<String, Map<String, String>> get attributes  {
    Map<String, Map<String, String>> attributes = super.attributes;
    attributes.removeWhere((key, value) =>
        value['CIAttributeClass'] == 'CIImage');

    attributes.forEach((key, value) {
      if (value['CIAttributeClass'] == 'NSNumber' &&
          value['CIAttributeType'] != 'CIAttributeTypeBoolean') {
        value['AttributeClass'] = 'num';
      }
      if (value['CIAttributeClass'] == 'NSNumber' &&
          value['CIAttributeType'] == 'CIAttributeTypeBoolean') {
        value['AttributeClass'] = 'bool';
      }
      if (value['CIAttributeClass'] == 'CIVector' &&
          (value['CIAttributeType'] == 'CIAttributeTypePosition' ||
              value['CIAttributeType'] == 'CIAttributeTypeOffset')) {
        value['AttributeClass'] = 'Point';
      }
      if (value['CIAttributeClass'] == 'CIVector' &&
          value['CIAttributeType'] == 'CIAttributeTypeRectangle') {
        value['AttributeClass'] = 'List<Point>';
      }
      if (value['CIAttributeClass'] == 'CIColor') {
        value['AttributeClass'] = 'Color';
      }
      if (value['CIAttributeClass'] == 'CIVector' &&
          (value['CIAttributeType'] == 'CIAttributeTypePosition3' ||
              value['CIAttributeType'] == null)) {
        value['AttributeClass'] = 'List<double>';
      }
      if (value['CIAttributeClass'] == 'NSValue') {
        value['AttributeClass'] = 'List<double>';
      }
    });
    _attributes = attributes;
    return _attributes ?? Map.identity();
  }

  @override
  Future<Uint8List?> get binaryOutput => group.binaryOutput;

  @override
  Future<void> export(File output) => group.export(output);

  @override
  Future<void> setAssetSource(String name) => group.setAssetSource(name);

  @override
  Future<void> setFileSource(File path) => group.setFileSource(path);

  @override
  Future<void> setSource(Uint8List data) => group.setSource(data);

  @override
  Future<void> setNumValue(String key, num value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    if (properties['CIAttributeClass'] != 'NSNumber') {
      return Future.error('$key is not number format');
    }
    if (properties['CIAttributeType'] == 'CIAttributeTypeBoolean') {
      return Future.error('$key is not NSNumber format');
    }
    if (properties['CIAttributeSliderMin'] != null) {
      final min = double.parse(properties['CIAttributeSliderMin'] ?? '');

      if (value < min) {
        return Future.error('$value must be more than $min');
      }
    }
    if (properties['CIAttributeSliderMax'] != null) {
      final max = double.parse(properties['CIAttributeSliderMax'] ?? '');

      if (value > max) {
        return Future.error('$value must be less than $max');
      }
    }
    if (properties['CIAttributeMin'] != null) {
      final min = double.parse(properties['CIAttributeMin'] ?? '');

      if (value < min) {
        return Future.error('$value must be more than $min');
      }
    }
    if (properties['CIAttributeMax'] != null) {
      final max = double.parse(properties['CIAttributeMax'] ?? '');

      if (value > max) {
        return Future.error('$value must be less than $max');
      }
    }
    await FilterFactory._api.setNumberValue(InputNumberValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: value.toDouble()));
  }

  @override
  Future<void> setBoolValue(String key, bool value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    if (properties['CIAttributeClass'] != 'NSNumber') {
      return Future.error('$key is not NSNumber format');
    }
    if (properties['CIAttributeType'] != 'CIAttributeTypeBoolean') {
      return Future.error('$key is not bool format');
    }
    await FilterFactory._api.setNumberValue(InputNumberValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: value ? 1.0 : 0.0));
  }

  @override
  Future<void> setColorValue(String key, Color value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['CIAttributeClass'];
    if (type != 'CIColor') {
      return Future.error('$key is not $type format');
    }
    await FilterFactory._api.setNumberListValue(InputNumberListValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: [
      value.red / 255.0,
      value.green / 255.0,
      value.blue / 255.0,
      value.alpha / 255.0
    ]));
  }

  @override
  Future<void> setDoubleArrayValue(String key, List<double> value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['CIAttributeClass'];
    if (type != 'NSValue' && type != 'CIVector') {
      return Future.error('$key is not $type format');
    }
    if (type == 'NSValue' && value.length != 6) {
      return Future.error('Must be 6 elements in list');
    }
    if (type == 'CIVector' &&
        properties['CIAttributeType'] == 'CIAttributeTypePosition3' &&
        value.length != 3) {
      return Future.error('Must be 3 elements in list');
    }
    await FilterFactory._api.setNumberListValue(InputNumberListValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: value));
  }

  @override
  Future<void> setPointValue(String key, Point value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['CIAttributeClass'];
    if (type != 'CIVector') {
      return Future.error('$key is not $type format');
    }
    if (properties['CIAttributeType'] != 'CIAttributeTypePosition' &&
        properties['CIAttributeType'] != 'CIAttributeTypeOffset') {
      return Future.error('$key is not CIVector format');
    }
    await FilterFactory._api.setNumberListValue(InputNumberListValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: [value.x.toDouble(), value.y.toDouble()]));
  }

  @override
  Future<void> setPointArrayValue(String key, List<Point> value) async {
    var attributes = _attributes;
    if (attributes == null) {
      attributes = this.attributes;
    }
    final properties = attributes[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['CIAttributeClass'];
    if (type != 'CIVector') {
      return Future.error('$key is not $type format');
    }
    if (properties['CIAttributeType'] != 'CIAttributeTypeRectangle') {
      return Future.error('$key is not CIVector format');
    }
    if (value.length != 2) {
      return Future.error('Must be 2 elements in list');
    }
    final values = value.map((e) => [e.x, e.y]).expand((e) => e).map((e) => e.toDouble()).toList();
    await FilterFactory._api.setNumberListValue(InputNumberListValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: values));
  }

  @override
  Future<void> setNSData(String key, Uint8List data) async {
    await FilterFactory._api.setDataValue(InputDataValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: data));
  }

  @override
  Future<void> setNSDataAsset(String key, String name) async {
    await FilterFactory._api.setDataSourceValue(InputDataSourceValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: name));
  }

  @override
  Future<void> setNSDataFile(String key, File file) async {
    await FilterFactory._api.setDataSourceValue(InputDataSourceValueMessage(
        filterId: group.id, filterIndex: id, key: key, value: file.path));
  }
}
