import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/index.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _filtersFactory = const FilterFactory();
  CIFilter _filter;
  File _output;

  String get asset => 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    _prepare().then((_) => setState(() {}));
  }

  Future<void> _prepare() async {
    final directory = await getTemporaryDirectory();
    final uuid = Uuid();
    final path =
        '${directory.path}/${uuid.v4()}.jpg';
    _filter = await _filtersFactory.create('CIPhotoEffectMono');
    await _filter.setAssetSource(asset);
    _output = File(path);
    await _filter.export(_output);
  }

  @override
  void dispose() {
    _filtersFactory.dispose(_filter);
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
        title: Text(_filter?.name ?? 'Initializing...'),
      ),
      body: Center(
        child: _output == null
            ? CircularProgressIndicator()
            : imagePreview,
      ),
    );
  }

  Widget get imagePreview {
    if (_output != null) {
      return Image.file(_output);
    }
    return Text('Failed to process image');
  }
}
