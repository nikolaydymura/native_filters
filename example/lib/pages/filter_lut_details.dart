import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_filters/native_filters.dart';
import 'package:image/image.dart' as img;

import '../widgets/input_number_widget.dart';
import '../widgets/input_slider_num_widget.dart';
import 'filter_preview.dart';
import 'filter_result.dart';
import 'image_filter_result.dart';

class FilterLutDetailsScreen extends StatefulWidget {
  final FilterItem filter;
  final FilterFactory factory;

  const FilterLutDetailsScreen({
    Key? key,
    required this.filter,
    required this.factory,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterDetailsState();
}

class _FilterDetailsState extends State<FilterLutDetailsScreen> {
  late final Filterable _filter;

  late final List<FilterInput> _details;

  String imageAssetPath = 'images/test.jpg';
  List<String> imagesAssets = ['images/test.jpg'];

  late LutAssetInfo filterLutAsset;
  List<LutAssetInfo> filterLutAssets = [
    LutAssetInfo('filters/filter_lut_1.png', 8, 8, 8),
    LutAssetInfo('filters/filter_lut_2.png', 8, 8, 8),
    LutAssetInfo('filters/filter_lut_3.png', 8, 8, 8),
    LutAssetInfo('filters/filter_lut_4.png', 8, 8, 8),
    LutAssetInfo('filters/filter_lut_5.png', 8, 8, 8),
    LutAssetInfo('filters/filter_lut_6.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_7.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_8.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_9.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_10.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_11.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_12.png', 8, 64, 8),
    LutAssetInfo('filters/filter_lut_13.png', 16, 1, 8),
  ];

  bool processNative = false;

  @override
  void initState() {
    super.initState();
    filterLutAsset = filterLutAssets.first;
    _details = FilterFactory.filterAttributes(filterName: widget.filter.name)
            ?.toList() ??
        [];
    _loadFilterInfo().whenComplete(
      () => _applyLut(),
    );
  }

  @override
  void dispose() {
    widget.factory.dispose(_filter);
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
        title: Text(widget.filter.name),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.filter.isVideoSupported)
              FloatingActionButton(
                tooltip: 'Video demo',
                heroTag: null,
                child: const Icon(Icons.videocam),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FilterResultScreen(filter: _filter, video: true),
                    ),
                  );
                },
              ),
            if (widget.filter.isImageSupported)
              FloatingActionButton(
                tooltip: 'Photo demo',
                heroTag: null,
                child: const Icon(Icons.image),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageFilterResultScreen(
                        filter: _filter,
                        asset: imageAssetPath,
                      ),
                    ),
                  );
                },
              ),
            if (widget.filter.isVideoSupported)
              FloatingActionButton(
                tooltip: 'Live video demo',
                heroTag: null,
                child: const Icon(Icons.video_label),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FilterPreviewScreen(filter: _filter),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: imageAssetPath,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      imageAssetPath = value;
                    });
                  }
                },
                items:
                    imagesAssets.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          value,
                          height: 100,
                          width: 100,
                        ),
                        Text(value),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            ..._filtersInfo
          ],
        ),
      ),
    );
  }

  Future<void> _loadFilterInfo() async {
    if (Platform.isIOS) {
      final filterGroup = await widget.factory.createFilterGroup();
      final filter = await filterGroup.addFilter(widget.filter.name);
      const size = 64;
      await filter.setNumValue('inputCubeDimension', size);

      await filter.setNSDataAsset('inputCubeData', filterLutAsset.path);

      final previewFilter = await filterGroup.addFilter('CISwipeTransition');
      await previewFilter.setNumValue('inputTime', 0.5);
      await previewFilter.setCIImageAsset(
        'inputTargetImage',
        imageAssetPath,
      );
      await previewFilter.setNumValue('inputWidth', 0.0);
      final asset = await rootBundle.load(imageAssetPath);
      final image = await decodeImageFromList(asset.buffer.asUint8List());

      await previewFilter.setDoubleArrayValue(
        'inputExtent',
        [0.0, 0.0, image.width.toDouble(), image.height.toDouble()],
      );
      await previewFilter.setColorValue('inputColor', Colors.black);
      _filter = filterGroup;
    } else {
      if (widget.filter.name == 'GPULookup') {
        final filter = await widget.factory.createFilter(widget.filter.name);
        await filter.setBitmapAsset(
          'inputTextureCubeData',
          filterLutAsset.path,
        );
        _filter = filter;
      } else {
        final filterGroup = await widget.factory.createFilterGroup();
        final filter = await filterGroup.addFilter(widget.filter.name);
        _filter = filterGroup;
      }
    }

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
      if (input.isSliderNum) {
        items.add(
          InputSliderNumWidget(
            name: input.name,
            min: input.data['AttributeSliderMin'].toDouble(),
            max: input.data['AttributeSliderMax'].toDouble(),
            value: input.defaultNum?.toDouble(),
            valueChanged: (key, value) async {
              final Filter filter;
              if (_filter is Filter) {
                filter = _filter as Filter;
              } else {
                final group = _filter as FilterGroup;
                filter = group[0];
              }
              await filter.setNumValue(key, value);
            },
          ),
        );
      } else if (input.isNum) {
        items.add(
          InputNumberWidget(
            name: input.name,
            value: input.defaultNum,
            valueChanged: (key, value) async {
              final Filter filter;
              if (_filter is Filter) {
                filter = _filter as Filter;
              } else {
                final group = _filter as FilterGroup;
                filter = group[0];
              }
              await filter.setNumValue(key, value);
            },
          ),
        );
      } else if (input.isData) {
        items.add(
          DropdownButtonHideUnderline(
            child: DropdownButton<LutAssetInfo>(
              value: filterLutAsset,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (LutAssetInfo? value) {
                if (value != null) {
                  setState(() {
                    filterLutAsset = value;
                  });
                  _applyLut();
                }
              },
              items: filterLutAssets.map((value) {
                return DropdownMenuItem<LutAssetInfo>(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        value.path,
                        width: 50,
                        height: 50,
                      ),
                      Text(value.path),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        );
      }
      final data = input.data;
      items.addAll(_attributeDetails(data));
    }
    items.add(
      Row(
        children: [
          Checkbox(
            value: processNative,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  processNative = value;
                });
                _applyLut();
              }
            },
          ),
          const Text('Process LUT natively')
        ],
      ),
    );
    return items;
  }

  Future<void> _applyLut() async {
    final value = filterLutAsset;
    final Filter filter;
    if (_filter is Filter) {
      filter = _filter as Filter;
    } else {
      final group = _filter as FilterGroup;
      filter = group[0];
    }
    if (processNative) {
      if (Platform.isIOS) {
        await filter.setNSDataAsset(
          'inputCubeData',
          value.path,
          lut8x64: value.rows == 64,
          process: processNative,
        );
      } else if (Platform.isAndroid) {
        await filter.setBitmapAsset(
          'inputTextureCubeData',
          value.path,
          lut8x64: value.rows == 64,
          process: processNative,
        );
      }
    } else {
      if (Platform.isIOS) {
        const dimension = 64;
        final image = await rootBundle
            .load(value.path)
            .then((value) => value.buffer.asUint8List())
            .then((value) => img.decodeImage(value));
        final data = lutPngToNSData(
          dimension,
          image!.getBytes(format: img.Format.rgba),
          image.width ~/ dimension,
          image.height ~/ dimension,
        );
        await filter.setNSData(
          'inputCubeData',
          data,
        );
      } else if (Platform.isAndroid) {
        final byteData = await rootBundle.load(value.path);
        final data = byteData.buffer.asUint8List();
        await filter.setBitmap(
          'inputTextureCubeData',
          data,
        );
      }
    }
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
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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

class LutAssetInfo {
  final String path;
  final double size;
  final double rows;
  final double columns;

  LutAssetInfo(this.path, this.size, this.rows, this.columns);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LutAssetInfo &&
          runtimeType == other.runtimeType &&
          path == other.path;

  @override
  int get hashCode => path.hashCode;
}
