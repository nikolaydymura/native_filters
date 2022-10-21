part of native_filters;

class Filter extends Filterable {
  final String name;
  final int index;

  Filter._(this.name, int id, this.index, ImageVideoFilterFactoryApi api)
      : super._(id, api);

  Set<String> get inputKeys {
    if (Platform.isIOS || Platform.isMacOS) {
      return _kCoreImageFilters
              .firstWhereOrNull((e) => e['AttributeFilterName'] == name)
              ?.keys
              .where((e) => e.startsWith('input'))
              .whereNot((e) => e == 'inputImage')
              .toSet() ??
          {};
    } else if (Platform.isAndroid) {
      return [..._kGPUImageFilters, ..._kGPUVideoFilters]
              .firstWhereOrNull((e) => e['AttributeFilterName'] == name)
              ?.keys
              .where((e) => e.startsWith('input'))
              .whereNot((e) => e == 'inputImage')
              .toSet() ??
          _gpuAttributes[name]?.keys.toSet() ??
          {};
    }
    return {};
  }

  Map<String, Map<String, String>> get attributes {
    if (Platform.isIOS || Platform.isMacOS) {
      final filter = _kCoreImageFilters
          .firstWhereOrNull((e) => e['AttributeFilterName'] == name);
      final attrs = <String, Map<String, String>>{};
      filter?.forEach((key, value) {
        if (key.startsWith('input') && key != 'inputImage') {
          attrs[key] = Map.castFrom<String, dynamic, String, String>(value);
        }
      });
      return attrs;
    } else if (Platform.isAndroid) {
      final filter = [..._kGPUImageFilters, ..._kGPUVideoFilters]
          .firstWhereOrNull((e) => e['AttributeFilterName'] == name);
      final attrs = <String, Map<String, String>>{};
      filter?.forEach((key, value) {
        if (key.startsWith('input') && key != 'inputImage') {
          attrs[key] = Map.castFrom<String, dynamic, String, String>(value);
        }
      });
      return _gpuAttributes[name] ?? attrs;
    }
    return {};
  }

  /// Change double [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to int or float
  /// For Core Image filters can be applied to CIFilter that has CIAttributeClass as NSNumber.
  Future<void> setNumValue(String key, num value) async {
    await _api.setNumberValue(
      InputNumberValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: value.toDouble(),
      ),
    );
  }

  /// Change bool [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to boolean
  /// For Core Image filters can be applied to CIFilter that has CIAttributeClass as NSNumber and CIAttributeType equals to CIAttributeTypeBoolean
  Future<void> setBoolValue(String key, bool value) async {
    await _api.setNumberValue(
      InputNumberValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: value ? 1.0 : 0.0,
      ),
    );
  }

  /// Change Color [value] for [key]
  ///
  /// For GPUImage filters can be applied for color attributes that have GPUAttributeClass equals to float[]
  /// For Core Image filters can be applied to CIFilter that has CIAttributeClass equals to CIColor
  Future<void> setColorValue(String key, Color value) async {
    await _api.setNumberListValue(
      InputNumberListValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: [
          value.red / 255.0,
          value.green / 255.0,
          value.blue / 255.0,
          value.alpha / 255.0
        ],
      ),
    );
  }

  /// Change double array [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to float[]
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to NSValue or CIVector
  Future<void> setDoubleArrayValue(String key, List<double> value) async {
    await _api.setNumberListValue(
      InputNumberListValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: value,
      ),
    );
  }

  /// Change point [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to PointF
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to CIVector and and CIAttributeType equals to CIAttributeTypePosition or CIAttributeTypeOffset
  Future<void> setPointValue(String key, Point value) async {
    await _api.setNumberListValue(
      InputNumberListValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: [value.x.toDouble(), value.y.toDouble()],
      ),
    );
  }

  /// Change points [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to PointF[]
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to CIVector and and CIAttributeType equals to CIAttributeTypeRectangle
  Future<void> setPointArrayValue(String key, List<Point> value) async {
    final values = value
        .map((e) => [e.x, e.y])
        .expand((e) => e)
        .map((e) => e.toDouble())
        .toList();
    await _api.setNumberListValue(
      InputNumberListValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: values,
      ),
    );
  }

  Future<void> setNSData(String key, Uint8List data) async {
    await _api.setDataValue(
      InputDataValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: data,
      ),
    );
  }

  Future<void> setNSDataAsset(String key, String name) async {
    await _api.setDataSourceValue(
      InputDataSourceValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: name,
      ),
    );
  }

  Future<void> setNSDataFile(String key, File file) async {
    await _api.setDataSourceValue(
      InputDataSourceValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: file.path,
      ),
    );
  }

  Future<void> setBitmapFile(String key, File file) async {
    await _api.setDataSourceValue(
      InputDataSourceValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: file.path,
      ),
    );
  }

  Future<void> setBitmapAsset(String key, String name) async {
    await _api.setDataSourceValue(
      InputDataSourceValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: name,
      ),
    );
  }

  Future<void> setBitmap(String key, Uint8List data) async {
    await _api.setDataValue(
      InputDataValueMessage(
        filterId: id,
        filterIndex: index,
        key: key,
        value: data,
      ),
    );
  }
}
