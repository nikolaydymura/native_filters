part of native_filters;

class _GPUImageFilter extends Filter {
  final String name;
  final int index;
  final _GPUImageFilterGroup group;

  _GPUImageFilter(this.name, this.index, this.group);

  Future<Map<String, Map<String, String>>> get attributes async {
    final gpuAttributes = _gpuAttributes[name];
    if (gpuAttributes == null) {
      return Map.identity();
    }
    final attributes = Map.of(gpuAttributes);

    attributes.removeWhere(
        (key, value) => value['GPUAttributeClass'] == 'InputStream');
    return Future.value(attributes.map((key, attribute) {
      final value = Map.of(attribute);
      if (value['GPUAttributeClass'] == 'float' ||
          value['GPUAttributeClass'] == 'int') {
        value['AttributeClass'] = 'num';
      }
      if (value['GPUAttributeClass'] == 'boolean') {
        value['AttributeClass'] = 'bool';
      }
      if (value['GPUAttributeClass'] == 'float[]') {
        value['AttributeClass'] = 'List<double>';
      }
      if (value['GPUAttributeClass'] == 'PointF') {
        value['AttributeClass'] = 'Point';
      }
      if (value['GPUAttributeClass'] == 'PointF[]') {
        value['AttributeClass'] = 'List<Point>';
      }
      return MapEntry(key, value);
    }));
  }

  @override
  Future<Uint8List?> get binaryOutput => group.binaryOutput;

  @override
  Future<void> export(File output) => group.export(output);

  @override
  Future<List<String>> get inputKeys async {
    final attrs = await attributes;
    return attrs.keys.toList();
  }

  @override
  Future<void> setAssetSource(String name) => group.setAssetSource(name);

  @override
  Future<void> setFileSource(File path) => group.setFileSource(path);

  @override
  Future<void> setSource(Uint8List data) => group.setSource(data);

  @override
  Future<void> setNumValue(String key, num value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'float' && type != 'int') {
      return Future.error('$key is not $type format');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(this, method, value);
  }

  @override
  Future<void> setBoolValue(String key, bool value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'boolean') {
      return Future.error('$key is not $type format');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(this, method, value);
  }

  @override
  Future<void> setColorValue(String key, Color value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'float[]' && properties['GPUAttributeType'] != 'vec3') {
      return Future.error('$key is not $type format');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(
        this,
        method,
        Float64List.fromList(
            [value.red / 255.0, value.green / 255.0, value.blue / 255.0]));
  }

  @override
  Future<void> setPointValue(String key, Point value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'PointF') {
      return Future.error('$key is not $type format');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(
        this, method, Float64List.fromList([value.x.toDouble(), value.y.toDouble()]));
  }

  @override
  Future<void> setDoubleArrayValue(String key, List<double> value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'float[]') {
      return Future.error('$key is not $type format');
    }
    if (properties['GPUAttributeType'] == 'vec3' && value.length != 3) {
      return Future.error('$key is not $type format');
    }
    if (properties['GPUAttributeType'] == 'mat3' && value.length != 9) {
      return Future.error('$key is not $type format');
    }
    if (properties['GPUAttributeType'] == 'mat4' && value.length != 16) {
      return Future.error('$key is not $type format');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(this, method, Float64List.fromList(value));
  }

  @override
  Future<void> setPointArrayValue(String key, List<Point> value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final type = properties['GPUAttributeClass'];
    if (type != 'PointF[]') {
      return Future.error('$key is not $type format');
    }
    final values = value.map((e) => [e.x, e.y]).expand((e) => e).map((e) => e.toDouble());
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    return group._setValue(this, method, Float64List.fromList(values.toList()));
  }

  @override
  Future<void> setAttributeValue(String key, dynamic value) async {
    final properties = (await attributes)[key];
    if (properties == null) {
      return Future.error('$key is not acceptable for $name');
    }
    final method = properties['GPUAttributeMethod'];
    if (method == null){
      return;
    }
    if (value is File) {
      return group._setValue(this, method, value.path);
    }
    return group._setValue(this, method, value);
  }

  @override
  Future<void> setNSData(String key, Uint8List data) {
    throw UnsupportedError('Not available in Android');
  }

  @override
  Future<void> setNSDataAsset(String key, String name) {
    throw UnsupportedError('Not available in Android');
  }

  @override
  Future<void> setNSDataFile(String key, File path) {
    throw UnsupportedError('Not available in Android');
  }


}
