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

  Future<void> setScalarValue(String key, double value);
}
