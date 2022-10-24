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

  Future<Filter?> addFilter(String name) async {
    try {
      final index = _filters.length;
      await FilterFactory._api
          .appendFilter(AppendFilterMessage(name: name, filterId: id));
      final filter = Filter._(name, id, index, _api);
      _filters.add(filter);
      return filter;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> removeFilter(Filter filter) async {
    await FilterFactory._api.removeFilter(
      RemoveFilterMessage(filterId: id, filterIndex: filter.id),
    );
  }
}
