import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_filters/native_filters.dart';
import 'package:image/image.dart' as img;

import 'filter_preview.dart';
import 'filter_result.dart';

class FilterDetailsScreen extends StatefulWidget {
  final FilterItem filter;
  final FilterFactory factory;

  const FilterDetailsScreen({
    Key? key,
    required this.filter,
    required this.factory,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterDetailsState();
}

class _FilterDetailsState extends State<FilterDetailsScreen> {
  Filterable? _filter;

  List<FilterInput> _details = [];

  @override
  void initState() {
    super.initState();
    _loadFilterInfo();
  }

  @override
  void dispose() {
    final filter = _filter;
    if (filter != null) {
      widget.factory.dispose(filter);
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
        actions: <Widget>[
          if (widget.filter.isVideoSupported)
            IconButton(
              icon: const Icon(Icons.videocam),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FilterResultScreen(filter: _filter!, video: true),
                  ),
                );
              },
            ),
          if (widget.filter.isImageSupported)
            IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterResultScreen(filter: _filter!),
                  ),
                );
              },
            ),
          if (widget.filter.isVideoSupported)
            IconButton(
              icon: const Icon(Icons.video_label),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterPreviewScreen(filter: _filter!),
                  ),
                );
              },
            ),
        ],
        title: Text(widget.filter.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _filtersInfo,
        ),
      ),
    );
  }

  Future<void> _loadFilterInfo() async {
    if (Platform.isIOS) {
      final filterGroup = await widget.factory.createFilterGroup();
      final filter = await filterGroup.addFilter(widget.filter.name);
      if (widget.filter.name == 'CIColorCube') {
        const size = 64;
        await filter?.setNumValue('inputCubeDimension', size);

        ByteData data = await rootBundle.load('filters/filter_lut_3.png');
        Uint8List bytes = data.buffer.asUint8List();
        img.Image? photo = img.decodeImage(bytes);
        final bitmap = photo!.getBytes(format: img.Format.argb);
        final lutData = lutPngToNSData(64, bitmap, photo.width, photo.height);

        ByteData data1 = await rootBundle.load('filters/filter_lut_3.data');
        Uint8List bytes1 = data.buffer.asUint8List();
        //for(var i =0; i< lutData.length; i ++){
        //print('i=$i, ${lutData[i]}==${bytes1[i]} = ${lutData[i] == bytes1[i]}');
        //}

        await filter?.setNSData('inputCubeData', lutData);
      }
      final previewFilter = await filterGroup.addFilter('CISwipeTransition');
      print(previewFilter?.index);
      await previewFilter?.setNumValue('inputTime', 0.5);
      await previewFilter?.setCIImageAsset(
        'inputTargetImage',
        'images/test.jpg',
      );
      await previewFilter?.setNumValue('inputWidth', 0.0);
      await previewFilter
          ?.setDoubleArrayValue('inputExtent', [0.0, 0.0, 1200.0, 1788.0]);
      await previewFilter?.setColorValue('inputColor', Colors.black);
      _filter = filterGroup;
    } else {
      final filter = await widget.factory.createFilter(widget.filter.name);
      if (widget.filter.name == 'GlLookUpTableFilter') {
        await filter.setBitmapAsset(
          'inputCubeData',
          'filters/lookup_sample.png',
        );
      }
      _filter = filter;
    }
    _details = FilterFactory.filterAttributes(filterName: widget.filter.name)
            ?.toList() ??
        [];

    if (!mounted) return;

    setState(() {});
  }

  List<Widget> get _filtersInfo {
    List<Widget> items = [];

    for (var input in _details) {
      items.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            input.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      );
      final data = input.data;
      items.addAll(_attributeDetails(data));
    }
    return items;
  }

  List<Widget> _attributeDetails(Map<String, dynamic> items) {
    return items
        .map(
          (key, value) => MapEntry(
            Text(
              key,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              value.toString(),
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        )
        .entries
        .map((e) => [e.key, e.value])
        .expand((element) => element)
        .toList();
  }
}

class _NumField extends StatefulWidget {
  final String name;
  final Map<String, dynamic> attribute;
  final Filter filter;

  const _NumField({
    Key? key,
    required this.name,
    required this.filter,
    required this.attribute,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NumFieldState();
}

class _NumFieldState extends State<_NumField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              onSubmitted: (String value) async {
                await widget.filter.setNumValue(widget.name, num.parse(value));
              },
            ),
          ),
          TextButton(
            child: const Text('apply'),
            onPressed: () async {
              await widget.filter
                  .setNumValue(widget.name, num.parse(_controller.text));
            },
          ),
        ],
      ),
    );
  }
}
