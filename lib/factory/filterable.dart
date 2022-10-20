part of native_filters;

abstract class Filterable {
  int get id;
  Future<void> setFileSource(File path);

  Future<void> setAssetSource(String name);

  Future<void> setSource(Uint8List data);

  Future<Uint8List?> get binaryOutput;

  Future<void> export(File output);
}

class FilterGroup extends Filterable {
  static final String _mp4 = '.mp4';
  static final String _mov = '.mov';
  static final String _png = '.png';
  static final String _jpg = '.jpg';
  static final String _jpeg = '.jpeg';
  final int id;
  final MethodChannel _methodChannel;
  final List<Filter> _filters;

  FilterGroup._(this.id)
      : _methodChannel = MethodChannel('Filter-$id'),
        _filters = <Filter>[];

  Filter operator [](int index) {
    return _filters[index];
  }

  int get filtersCount => _filters.length;

  Future<Filter?> addFilter(String name) async {
    try {
      final index = _filters.length;
      await FilterFactory._api
          .appendFilter(AppendFilterMessage(name: name, filterId: id));
      if (Platform.isIOS) {
        final filter = _CIFilter(name, index, this);
        _filters.add(filter);
        return filter;
      } else if (Platform.isAndroid) {
        final filter = _GPUImageFilter(name, index, this);
        _filters.add(filter);
        return filter;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> removeFilter(Filter filter) async {
    await FilterFactory._api.removeFilter(
        RemoveFilterMessage(filterId: id, filterIndex: filter.id));
  }

  Future<void> setFileSource(File file) async {
    if (_isVideo(file.path)) {
      await FilterFactory._api.setInputSource(InputSourceMessage(
          filterId: id, path: file.path, asset: false, video: true));
    }
    if (_isImage(file.path)) {
      await FilterFactory._api.setInputSource(InputSourceMessage(
          filterId: id, path: file.path, asset: false, video: false));
    }
  }

  Future<void> setAssetSource(String name) async {
    if (_isVideo(name)) {
      await FilterFactory._api.setInputSource(InputSourceMessage(
          filterId: id, path: name, asset: true, video: true));
    }
    if (_isImage(name)) {
      await FilterFactory._api.setInputSource(InputSourceMessage(
          filterId: id, path: name, asset: true, video: false));
    }
  }

  Future<void> setSource(Uint8List data) async {
    await FilterFactory._api
        .setInputData(InputDataMessage(filterId: id, data: data));
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
    final result =
        await FilterFactory._api.exportData(FilterMessage(filterId: id));
    return result.data;
  }

  Future<void> export(File output) async {
    if (_isVideo(output.path)) {
      await FilterFactory._api.exportFile(
          ExportFileMessage(filterId: id, path: output.path, video: true));
    } else if (_isImage(output.path)) {
      await FilterFactory._api.exportFile(
          ExportFileMessage(filterId: id, path: output.path, video: false));
    } else {
      return Future.error('Not supported');
    }
  }

  Future<void> _setValue(Filter filter, String key, dynamic value) async {
    final index = _filters.indexOf(filter);
    await _methodChannel.invokeMethod('setValue', [index, key, value]);
  }
}

abstract class Filter extends Filterable {
  final int id;
  final String name;

  Filter(this.name, this.id);

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
  Future<void> setNumValue(String key, num value);

  /// Change bool [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to boolean
  /// For Core Image filters can be applied to CIFilter that has CIAttributeClass as NSNumber and CIAttributeType equals to CIAttributeTypeBoolean
  Future<void> setBoolValue(String key, bool value);

  /// Change Color [value] for [key]
  ///
  /// For GPUImage filters can be applied for color attributes that have GPUAttributeClass equals to float[]
  /// For Core Image filters can be applied to CIFilter that has CIAttributeClass equals to CIColor
  Future<void> setColorValue(String key, Color value);

  /// Change double array [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to float[]
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to NSValue or CIVector
  Future<void> setDoubleArrayValue(String key, List<double> value);

  /// Change point [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to PointF
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to CIVector and and CIAttributeType equals to CIAttributeTypePosition or CIAttributeTypeOffset
  Future<void> setPointValue(String key, Point value);

  /// Change points [value] for [key]
  ///
  /// For GPUImage filters can be applied for all attributes that have GPUAttributeClass equals to PointF[]
  /// For Core Image filters can be applied for all attributes that have CIAttributeClass equals to CIVector and and CIAttributeType equals to CIAttributeTypeRectangle
  Future<void> setPointArrayValue(String key, List<Point> value);

  Future<void> setNSDataFile(String key, File path) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> setNSDataAsset(String key, String name) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> setNSData(String key, Uint8List data) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> setBitmapFile(String key, File path) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> setBitmapAsset(String key, String name) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> setBitmap(String key, Uint8List data) {
    throw UnsupportedError('Not available in $defaultTargetPlatform');
  }

  Future<void> updateConfiguration(FilterConfigurationBuilder builder) async {
    final filterAttributes = ciFilters
        .firstWhereOrNull((item) => item['CIAttributeFilterName'] == name);

    if (filterAttributes == null) {
      throw 'There are no filters';
    }
    builder.validate(filterAttributes);
  }
}
