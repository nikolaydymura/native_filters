import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_filters/native_filters.dart';

import '../widgets/input_number_widget.dart';
import '../widgets/input_slider_num_widget.dart';
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
  late final Filterable _filter;

  late final List<FilterInput> _details;

  String imageAssetPath = 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    _details = FilterFactory.filterAttributes(filterName: widget.filter.name)
            ?.toList() ??
        [];
    _loadFilterInfo();
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
                      builder: (context) => FilterResultScreen(
                        filter: _filter,
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
          children: _filtersInfo,
        ),
      ),
    );
  }

  Future<void> _loadFilterInfo() async {
    if (Platform.isIOS) {
      final filterGroup = await widget.factory.createFilterGroup();
      await filterGroup.addFilter(widget.filter.name);
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
      final filterGroup = await widget.factory.createFilterGroup();
      await filterGroup.addFilter(widget.filter.name);
      _filter = filterGroup;
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
      }
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
