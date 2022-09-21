import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _filtersFactory = const FilterFactory();
  Filter? _filter;
  File? _output;
  Uint8List? _data;

  String get asset => 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    _prepare().then((_) => setState(() {}));
  }

  Future<void> _prepare() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
    final filePath = result?.files.single.path;
    final directory = await getTemporaryDirectory();
    const uuid = Uuid();
    final path = '${directory.path}/${uuid.v4()}.jpeg';
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      _filter = await _filtersFactory.create('CIPhotoEffectMono');
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      _filter = await _filtersFactory.create('GPUImageFalseColorFilter');
    }
    if (filePath != null) {
      await _filter?.setFileSource(File(filePath));
    } else {
      await _filter?.setAssetSource(asset);
    }

    _output = File(path);
    await _filter?.export(_output!);
    _data = await _filter?.binaryOutput;
  }

  @override
  void dispose() {
    final filter = _filter;
    if (filter != null) {
      _filtersFactory.dispose(filter);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_filter?.name ?? 'Initializing...'),
      ),
      body: Center(
        child: _output == null
            ? const CircularProgressIndicator()
            : Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(asset),
                  ),
                  const SizedBox(height: 3),
                  Expanded(
                    child: imagePreview1,
                  ),
                  const SizedBox(height: 3),
                  Expanded(
                    child: imagePreview2,
                  )
                ],
              ),
      ),
    );
  }

  Widget get imagePreview1 {
    final output = _output;
    if (output != null) {
      return Image.file(output);
    }
    return const Text('Failed to process and save image');
  }

  Widget get imagePreview2 {
    final data = _data;
    if (data != null) {
      return Image.memory(data);
    }
    return const Text('Failed to process image');
  }
}
