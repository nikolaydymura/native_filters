import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'filter_preview.dart';
import 'filter_result.dart';

class FilterDetailsScreen extends StatefulWidget {
  final String filterName;
  final FilterFactory factory;

  const FilterDetailsScreen(
      {Key? key, required this.filterName, required this.factory})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterDetailsState();
}

class _FilterDetailsState extends State<FilterDetailsScreen> {
  Filter? _filter;

  Map<String, Map<String, String>> _details = {};

  final List<String> _platformPreviews = ['Image Preview', 'Video Preview'];

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
          PopupMenuButton(
            onSelected: (key) {
              final isVideo = key == _platformPreviews[1];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FilterPreviewScreen(filter: _filter!, video: isVideo),
                ),
              );
            },
            itemBuilder: (BuildContext context) {
              return _platformPreviews.map((key) {
                return PopupMenuItem<String>(
                  value: key,
                  child: Text(key),
                );
              }).toList();
            },
          ),
        ],
        title: Text(widget.filterName),
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
    _filter = await widget.factory.create(widget.filterName);
    _details = await _filter?.attributes ?? {};

    if (!mounted) return;

    setState(() {});
  }

  List<Widget> get _filtersInfo {
    List<Widget> items = [];

    for (var key in _details.keys) {
      items.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            key,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      );
      final data = _details[key];
      if (data?['AttributeClass'] == 'num') {
        items.add(_NumField(name: key, filter: _filter!, attribute: data!));
      }
      items.addAll(_attributeDetails(data!));
    }
    return items;
  }

  List<Widget> _attributeDetails(Map<String, String> items) {
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
              value,
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
  final Map<String, String> attribute;
  final Filter filter;

  const _NumField(
      {Key? key,
      required this.name,
      required this.filter,
      required this.attribute})
      : super(key: key);

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
