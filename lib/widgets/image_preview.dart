import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_filters/core_image/filter.dart';

typedef void FilterImagePreviewCreatedCallback(
    FilterImagePreviewController controller);

class FilterImagePreview extends StatefulWidget {
  final FilterImagePreviewCreatedCallback onCreated;

  const FilterImagePreview({Key key, this.onCreated}) : super(key: key);

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
    widget.onCreated(new FilterImagePreviewController._(id));
  }
}

class FilterImagePreviewController {
  FilterImagePreviewController._(int id) {
    this._channel = new MethodChannel('FilterImagePreview_$id');
  }

  MethodChannel _channel;

  Future<void> loadData(Uint8List data) async {
    return _channel.invokeMethod('loadImageData', data);
  }

  Future<void> changeFilter(CIFilter filter) async {
    return _channel.invokeMethod('changeFilter', filter.index);
  }
}
