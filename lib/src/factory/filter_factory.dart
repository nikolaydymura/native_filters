part of native_filters;

class FilterFactory {
  static final ImageVideoFilterFactoryApi _api = ImageVideoFilterFactoryApi();
  static final FilterFactory _instance = FilterFactory._();

  FilterFactory._();

  factory FilterFactory() => _instance;

  Future<Filter> createFilter(String name) async {
    try {
      if (Platform.isAndroid) {
        try {
          final body = await rootBundle.loadString(
            'packages/native_filters/shaders/${name}_fragment.glsl',
          );
          final data = _kGPUImageFilters
              .firstWhere((element) => element['AttributeFilterName'] == name);
          final params = <String, Map<String, Object>>{};
          data.forEach((key, value) {
            if (key.startsWith('input') && key != 'inputImage') {
              params[key] = Map<String, Object>.from(value);
            }
          });
          final message = await _api.createShaderFilter(
            CreateShaderFilterMessage(
              shader: body,
              params: params,
              vertex: null,
              twoInput: name == 'GPULookup',
            ),
          );
          return Filter._(name, message.filterId, 0, _api);
        } catch (e, trace) {
          debugPrint(e.toString());
          debugPrintStack(label: 'createFilter($name)', stackTrace: trace);
        }
      }
      final message = await _api.createFilter(
        CreateFilterMessage(name: name),
      );
      return Filter._(name, message.filterId, 0, _api);
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future<FilterGroup> createFilterGroup() async {
    try {
      final message = await _api.createFilterGroup();
      return FilterGroup._(message.filterId, _api);
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future<void> dispose(Filterable filter) async {
    try {
      await _api.dispose(FilterMessage(filterId: filter.id));
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  static Iterable<FilterItem> get availableFilters {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return _kCoreImageFilters.where((element) {
        final List<String> items = element['AttributeFilterCategories'];
        return items.contains('CategoryVideo') ||
            items.contains('CategoryStillImage');
      }).map(FilterItem._fromJson);
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      final videos = _kGPUVideoFilters.where((element) {
        final List<String> items = element['AttributeFilterCategories'];
        return items.contains('CategoryVideo') ||
            items.contains('CategoryStillImage');
      }).map(FilterItem._fromJson);

      final images = _kGPUImageFilters.where((element) {
        final List<String> items = element['AttributeFilterCategories'];
        return items.contains('CategoryVideo') ||
            items.contains('CategoryStillImage');
      }).map(FilterItem._fromJson);

      return CombinedIterableView([videos, images]);
    }
    return [];
  }

  static Iterable<FilterInput>? filterAttributes({required String filterName}) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final filter = _kCoreImageFilters
          .firstWhereOrNull((e) => e['AttributeFilterName'] == filterName);
      return filter?.entries
          .where((e) => e.key.startsWith('input') && e.key != 'inputImage')
          .map(FilterInput._fromEntry);
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      final filter = [..._kGPUImageFilters, ..._kGPUVideoFilters]
          .firstWhereOrNull((e) => e['AttributeFilterName'] == filterName);
      return filter?.entries
          .where((e) => e.key.startsWith('input') && e.key != 'inputImage')
          .map(FilterInput._fromEntry);
    }
    return null;
  }
}

class FilterItem {
  final String name;
  final String displayName;
  final Set<String> categories;
  final Set<String> inputs;

  bool get isVideoSupported => categories.contains('CategoryVideo');

  bool get isImageSupported => categories.contains('CategoryStillImage');

  bool get isConfigurable => inputs.isNotEmpty;

  FilterItem._(this.name, this.displayName, this.categories, this.inputs);

  factory FilterItem._fromJson(Map<String, dynamic> json) {
    return FilterItem._(
      json['AttributeFilterName'],
      json['AttributeFilterDisplayName'],
      json['AttributeFilterCategories'].toSet(),
      json.keys
          .where((e) => e.startsWith('input'))
          .whereNot((e) => e == 'inputImage')
          .toSet(),
    );
  }
}

class FilterInput {
  final String name;
  final Map<String, dynamic> data;

  FilterInput._(this.name, this.data);

  factory FilterInput._fromEntry(MapEntry<String, dynamic> json) {
    return FilterInput._(json.key, Map<String, dynamic>.from(json.value));
  }

  bool get isNum =>
      data['AttributeClass'] == 'NSNumber' || data['AttributeClass'] == 'float';

  bool get isData =>
      data['AttributeClass'] == 'NSData' ||
      data['AttributeClass'] == 'CIImage' ||
      data['AttributeClass'] == 'Bitmap';

  num? get defaultNum => data['AttributeDefault'];

  bool get isSliderNum =>
      isNum &&
      data['AttributeSliderMax'] != null &&
      data['AttributeSliderMin'] != null;
}
