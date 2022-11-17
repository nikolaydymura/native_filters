import 'dart:io';

import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ImageFilterResultScreen extends StatefulWidget {
  final Filterable filter;
  final String? asset;
  final File? file;

  const ImageFilterResultScreen({
    Key? key,
    required this.filter,
    this.asset,
    this.file,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterResultState();
}

class _FilterResultState extends State<ImageFilterResultScreen> {
  late File _output;
  late int _elapsedMilliseconds;

  bool processing = true;

  @override
  void initState() {
    super.initState();
    _prepare().whenComplete(
      () => setState(() {
        processing = false;
      }),
    );
  }

  Future<void> _prepare() async {
    final directory = await getTemporaryDirectory();
    const uuid = Uuid();
    final path = '${directory.path}/${uuid.v4()}.jpg';
    _output = File(path);
    final file = widget.file;
    if (file != null) {
      await widget.filter.setFileSource(file);
    } else {
      final asset = widget.asset ?? 'images/test.jpg';
      await widget.filter.setAssetSource(asset);
    }
    final watch = Stopwatch();
    watch.start();
    debugPrint('$runtimeType ${_output.absolute}');
    await widget.filter.export(_output);
    _elapsedMilliseconds = watch.elapsedMilliseconds;
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
            : Column(
                children: [
                  Image.file(_output),
                  Text('Exporting file took $_elapsedMilliseconds milliseconds')
                ],
              ),
      ),
    );
  }
}
