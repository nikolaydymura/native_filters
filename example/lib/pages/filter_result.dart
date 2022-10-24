import 'dart:io';

import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';

class FilterResultScreen extends StatefulWidget {
  final Filterable filter;
  final bool video;

  const FilterResultScreen({Key? key, required this.filter, this.video = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResultScreen> {
  late VideoPlayerController _controller;
  late File _output;

  bool processing = true;

  String get asset => widget.video ? 'videos/test.mp4' : 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    _prepare()
        .then((_) => _prepareVideo())
        .then((_) => setState(() {}))
        .whenComplete(
          () => setState(() {
            processing = false;
          }),
        );
  }

  Future<void> _prepare() async {
    final directory = await getTemporaryDirectory();
    const uuid = Uuid();
    final path =
        '${directory.path}/${uuid.v4()}.${widget.video ? 'mp4' : 'jpg'}';
    _output = File(path);
    await widget.filter.setAssetSource(asset);
    final watch = Stopwatch();
    watch.start();
    if (!widget.video) {
      await widget.filter.binaryOutput;
      debugPrint('Exporting binary took ${watch.elapsedMilliseconds} milliseconds');
    }
    await widget.filter.export(_output);
    debugPrint('Exporting file took ${watch.elapsedMilliseconds} milliseconds');
    if (widget.video) {
      _prepareVideo();
    }
  }

  void _prepareVideo() {
    if (widget.video) {
      _controller = VideoPlayerController.file(_output);

      _controller.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
      _controller.setLooping(true);
      _controller.initialize().then((_) => setState(() {}));
      _controller.play();
    }
  }

  @override
  void dispose() {
    if (widget.video) {
      _controller.dispose();
    }
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
        title: const Text('Processed result'),
      ),
      body: Center(
        child: processing
            ? const CircularProgressIndicator()
            : widget.video
                ? videoPreview
                : imagePreview,
      ),
    );
  }

  Widget get imagePreview {
    return Image.file(_output);
  }

  Widget get videoPreview {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    );
  }
}
