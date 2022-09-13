part of native_filters;

typedef void FilterVideoPreviewCreatedCallback(
    FilterVideoPreviewController controller);

@Deprecated('For demonstration purposes only')
class FilterVideoPreview extends StatefulWidget {
  final FilterVideoPreviewCreatedCallback? onCreated;
  final Filterable filter;

  const FilterVideoPreview({Key? key, this.onCreated, required this.filter})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterVideoPreviewState();
}

class _FilterVideoPreviewState extends State<FilterVideoPreview> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'FilterVideoPreview',
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
          new FilterVideoPreviewController._(id, filter.group.keyId));
    }
    if (filter is _CIFilterGroup) {
      widget.onCreated?.call(new FilterVideoPreviewController._(id, filter.keyId));
    }
    if (filter is _GPUImageFilter) {
      widget.onCreated?.call(
          new FilterVideoPreviewController._(id, filter.group.keyId));
    }
    if (filter is _GPUImageFilterGroup) {
      widget.onCreated?.call(new FilterVideoPreviewController._(id, filter.keyId));
    }
  }
}

class FilterVideoPreviewController extends FilterBasePreviewController {
  FilterVideoPreviewController._(int id, int filterKey)
      : super('FilterVideoPreview_$id', filterKey);
}
