part of native_filters;

class FilterGroup extends Filterable {
  final List<Filter> _filters;

  FilterGroup._(int id, ImageVideoFilterFactoryApi api)
      : _filters = <Filter>[],
        super._(id, api);

  Filter operator [](int index) {
    return _filters[index];
  }

  int get filtersCount => _filters.length;

  Future<Filter> addFilter(String name) async {
    try {
      final index = _filters.length;
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
          await _api.appendShaderFilter(
            AppendShaderFilterMessage(
              filterId: id,
              shader: body,
              params: params,
              vertex: name == 'GPULookup'
                  ? await rootBundle.loadString(
                      'packages/native_filters/shaders/GPUTwoInput_vertex.glsl',
                    )
                  : null,
            ),
          );
          return Filter._(name, id, index, _api);
        } catch (e, trace) {
          debugPrint(e.toString());
          debugPrintStack(label: 'createFilter($name)', stackTrace: trace);
        }
      }
      await FilterFactory._api
          .appendFilter(AppendFilterMessage(name: name, filterId: id));
      final filter = Filter._(name, id, index, _api);
      _filters.add(filter);
      return filter;
    } catch (e, trace) {
      debugPrint(e.toString());
      debugPrintStack(label: 'addFilter($name)', stackTrace: trace);
      rethrow;
    }
  }

  Future<void> removeFilter(Filter filter) async {
    await FilterFactory._api.removeFilter(
      RemoveFilterMessage(filterId: id, filterIndex: filter.id),
    );
  }
}
