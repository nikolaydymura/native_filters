import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/core_image/filter.dart';
import 'package:native_filters/widgets/base_preview.dart';
import 'package:native_filters/widgets/image_preview.dart';
import 'package:native_filters/widgets/video_preview.dart';

class FilterPreviewScreen extends StatefulWidget {
  final CIFilter filter;
  final bool video;

  const FilterPreviewScreen({Key key, this.filter, this.video = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<FilterPreviewScreen> {
  FilterBasePreviewController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
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
      body: Center(
        child: widget.video ? videoPreview : imagePreview,
      ),
    );
  }

  Widget get imagePreview {
    return FilterImagePreview(onCreated: (controller) async {
      _controller = controller;
      _controller.loadAsset('images/test.jpg');
      _controller.changeFilter(widget.filter);
    });
  }

  Widget get videoPreview {
    return FilterVideoPreview(onCreated: (controller) async {
      _controller = controller;
      _controller.loadAsset('videos/test.mp4');
      _controller.changeFilter(widget.filter);
    });
  }
}
