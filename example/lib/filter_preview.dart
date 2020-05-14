import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_filters/core_image/filter.dart';
import 'package:native_filters/widgets/image_preview.dart';

class FilterPreviewScreen extends StatefulWidget {
  final CIFilter filter;

  const FilterPreviewScreen({Key key, this.filter})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<FilterPreviewScreen> {
  FilterImagePreviewController _controller;

  Future<Uint8List> _getImageDataFromAssets(String path) async {
    final byteData = await rootBundle.load('images/$path');

    return byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(widget.filter.name),
      ),
      body: Center(child: FilterImagePreview(
        onCreated: (controller) async {
          _controller = controller;
          final data = await _getImageDataFromAssets('test.jpg');
          _controller.loadData(data);
          _controller.changeFilter(widget.filter);
        },
      ),),
    );
  }
}
