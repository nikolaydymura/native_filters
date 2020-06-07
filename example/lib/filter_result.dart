import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

class FilterResultScreen extends StatefulWidget {
  final CIFilter filter;
  final bool video;

  const FilterResultScreen({Key key, this.filter, this.video = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResultScreen> {
  VideoPlayerController _controller;
  File _output;

  String get asset => widget.video ? 'videos/test.mp4' : 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    _prepare().then((_) => _prepareVideo()).then((_) => setState(() {}));
  }

  Future<void> _prepare() async {
    final directory = await getTemporaryDirectory();
    final uuid = Uuid();
    final path =
        '${directory.path}/${uuid.v4()}.${widget.video ? 'mp4' : 'jpg'}';
    _output = File(path);
    await widget.filter.setAssetSource(asset);
    await widget.filter.export(_output);
    if (widget.video) {
      _prepareVideo();
    }
  }

  void _prepareVideo() {
    if(widget.video) {
      _controller = VideoPlayerController.file(_output);

      _controller.addListener(() {
        setState(() {});
      });
      _controller.setLooping(true);
      _controller.initialize().then((_) => setState(() {}));
      _controller.play();
    }
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
        child: _output == null
            ? CircularProgressIndicator()
            : widget.video ? videoPreview : imagePreview,
      ),
    );
  }

  Widget get imagePreview {
    if (_output != null) {
      return Image.file(_output);
    }
    return Text('Failed to process image');
  }

  Widget get videoPreview {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    );
  }
}
