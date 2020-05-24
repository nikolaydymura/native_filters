import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/core_image/filter.dart';

import 'base_preview.dart';

typedef void FilterVideoPreviewCreatedCallback(
    FilterVideoPreviewController controller);

class FilterVideoPreview extends StatefulWidget {
  final FilterVideoPreviewCreatedCallback onCreated;
  final CIFilter filter;

  const FilterVideoPreview({Key key, this.onCreated, @required this.filter})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<FilterVideoPreview> {
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
    widget.onCreated(new FilterVideoPreviewController._(id, widget.filter));
  }
}

class FilterVideoPreviewController extends FilterBasePreviewController {
  FilterVideoPreviewController._(int id, CIFilter filter)
      : super('FilterVideoPreview_$id', filter);
}
