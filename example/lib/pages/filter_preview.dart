import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'dart:io' show Platform;

class FilterPreviewScreen extends StatefulWidget {
  final Filterable filter;

  const FilterPreviewScreen({
    Key? key,
    required this.filter,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VideoFilterPreviewState();
}

class _VideoFilterPreviewState extends State<FilterPreviewScreen> {
  late VideoPreviewController _controller;
  bool _ready = Platform.isAndroid;

  String get asset => 'videos/Butterfly-209.mp4';

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS) {
      VideoPreviewController.initialize()
          .then((value) => _controller = value)
          .then((value) => _onControllerCreated(value));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Live Video Preview'),
      ),
      body: Center(
        child: _ready ? videoPreview : const Offstage(),
      ),
    );
  }

  Widget get videoPreview {
    return FilterVideoPreview(
      controller: Platform.isIOS ? _controller : null,
      onCreated: (controller) {
        _controller = controller;
        _onControllerCreated(controller);
      },
    );
  }

  void _onControllerCreated(VideoPreviewController controller) {
    controller
        .setAssetSource(asset)
        .then((value) => _ready = true)
        .then((value) => _controller.setFilter(widget.filter))
        .whenComplete(() => setState(() {}));
  }
}
