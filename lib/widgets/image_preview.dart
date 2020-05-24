import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/core_image/filter.dart';

import 'base_preview.dart';

typedef void FilterImagePreviewCreatedCallback(
    FilterImagePreviewController controller);

class FilterImagePreview extends StatefulWidget {
  final FilterImagePreviewCreatedCallback onCreated;
  final CIFilter filter;

  const FilterImagePreview({Key key, this.onCreated, @required this.filter})
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
    widget.onCreated(new FilterImagePreviewController._(id, widget.filter));
  }
}

class FilterImagePreviewController extends FilterBasePreviewController {
  FilterImagePreviewController._(int id, CIFilter filter)
      : super('FilterImagePreview_$id', filter);
}
