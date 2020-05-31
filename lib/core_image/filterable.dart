part of cupertino_native_filters;

abstract class CIFilterable {

  Future<void> setFileSource(File path);

  Future<void> setAssetSource(String name);

  Future<void> setSource(Uint8List data);

  Future<Uint8List> get binaryOutput;

  Future<void> export(File output);
}

abstract class CIFilterGroup extends CIFilterable {
  Future<CIFilter> getFilter(int index);

  Future<int> get filtersCount;

  Future<CIFilter> addFilter(String name);

  Future<void> removeFilter(CIFilter filter);
}

abstract class CIFilter extends CIFilterable {
  String get name;
  Future<List<String>> get inputKeys;
  Future<Map<String, Map<String, String>>> get attributes;
}
