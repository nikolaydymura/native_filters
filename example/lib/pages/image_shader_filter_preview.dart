import 'dart:io';

import 'package:flutter/material.dart';
import 'package:native_filters/widgets/image_shader_preview.dart';
import 'package:path_provider/path_provider.dart';

class ImageShaderFilterPreviewScreen extends StatefulWidget {
  final String filter;
  final String? asset;
  final File? file;

  const ImageShaderFilterPreviewScreen({
    Key? key,
    required this.filter,
    this.asset,
    this.file,
  }) : super(key: key);

  @override
  State<ImageShaderFilterPreviewScreen> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<ImageShaderFilterPreviewScreen> {
  late File _output;
  late ImageShaderConfiguration _configuration;

  bool preparing = true;

  @override
  void initState() {
    super.initState();
    _prepare().whenComplete(
          () =>
          setState(() {
            preparing = false;
          }),
    ).then((value) {
     _export();
    });
  }

  Future<void> _export() async {
    final directory = await getTemporaryDirectory();
    final output = File('${directory.path}/1111.jpeg');
    exportImageFile('Lookup', _configuration, const Size(1280, 1788), output);
    print(output.absolute.path);
  }

  Future<void> _prepare() async {
    //final configuration = LookUpShaderConfiguration.lut8x64();
    //final configuration = LookUpShaderConfiguration.lut8x8();
    final configuration = LookUpShaderConfiguration.lut16x1();
    await configuration.setImage(widget.asset!);
    //await configuration.setLUT('filters/filter_lut_5.png');
    //await configuration.setLUT('filters/filter_lut_3.png');
    await configuration.setLUT('filters/lookup_sample.png');
    _configuration = configuration;
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
        child: preparing
            ? const CircularProgressIndicator()
            : ImageShaderPreview(
          shader: 'Lookup',
          configuration: _configuration,
        ),
      ),
    );
  }
}
