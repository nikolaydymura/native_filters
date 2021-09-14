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

// ignore: deprecated_member_use_from_same_package
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
    final onCreated = widget.onCreated;
    if (onCreated == null) {
      return;
    }
    final filter = widget.filter;
    if (filter is _CIFilter) {
      onCreated(FilterImagePreviewController._(id, filter.group.keyId));
    }
    if (filter is _CIFilterGroup) {
      onCreated(FilterImagePreviewController._(id, filter.keyId));
    }
    if (filter is _GPUImageFilter) {
      onCreated(FilterImagePreviewController._(id, filter.group.keyId));
    }
    if (filter is _GPUImageFilterGroup) {
      onCreated(FilterImagePreviewController._(id, filter.keyId));
    }
  }
}

class FilterImagePreviewController extends FilterBasePreviewController {
  FilterImagePreviewController._(int id, int filterKey)
      : super('FilterImagePreview_$id', filterKey);
}
