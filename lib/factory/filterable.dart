part of native_filters;

abstract class Filterable {
  Future<void> setFileSource(File path);

  Future<void> setAssetSource(String name);

  Future<void> setSource(Uint8List data);

  Future<Uint8List> get binaryOutput;

  Future<void> export(File output);
}

abstract class FilterGroup extends Filterable {
  Future<Filter> getFilter(int index);

  Future<int> get filtersCount;

  Future<Filter> addFilter(String name);

  Future<void> removeFilter(Filter filter);
}

abstract class Filter extends Filterable {
  String get name;
  Future<List<String>> get inputKeys;
  Future<Map<String, Map<String, String>>> get attributes;

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
}
