import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'base_preview.dart';

typedef void FilterVideoPreviewCreatedCallback(
    FilterVideoPreviewController controller);

class FilterVideoPreview extends StatefulWidget {
  final FilterVideoPreviewCreatedCallback onCreated;

  const FilterVideoPreview({Key key, this.onCreated}) : super(key: key);

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
    widget.onCreated(new FilterVideoPreviewController._(id));
  }
}

class FilterVideoPreviewController extends FilterBasePreviewController {
  FilterVideoPreviewController._(int id) : super('FilterVideoPreview_$id');
}
