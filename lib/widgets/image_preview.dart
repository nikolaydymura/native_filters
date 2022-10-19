part of native_filters;

typedef void FilterImagePreviewCreatedCallback(
    FilterImagePreviewController controller);

@Deprecated('For demonstration purposes only')
class FilterImagePreview extends StatefulWidget {
  final FilterImagePreviewCreatedCallback? onCreated;
  final Filterable filter;

  const FilterImagePreview({Key? key, this.onCreated, required this.filter})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<FilterImagePreview> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'FilterImagePreview',
        onPlatformViewCreated: _onPlatformViewCreated,
      );
    }
    return Text(
        '$defaultTargetPlatform is not yet supported by the image view plugin');
  }

  void _onPlatformViewCreated(int id) {
    if (widget.onCreated == null) {
      return;
    }
    final filter = widget.filter;
    if (filter is _CIFilter) {
      widget.onCreated?.call(
          new FilterImagePreviewController._(id, filter.group.id));
    }
    if (filter is FilterGroup) {
      widget.onCreated?.call(new FilterImagePreviewController._(id, filter.id));
    }
    if (filter is _GPUImageFilter) {
      widget.onCreated?.call(
          new FilterImagePreviewController._(id, filter.group.id));
    }
  }
}

class FilterImagePreviewController extends FilterBasePreviewController {
  FilterImagePreviewController._(int id, int filterKey)
      : super('FilterImagePreview_$id', filterKey);
}
