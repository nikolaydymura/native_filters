import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'filter_preview.dart';
import 'filter_result.dart';

class FilterDetailsScreen extends StatefulWidget {
  final String filterName;
  final FilterFactory factory;

  const FilterDetailsScreen({Key key, this.filterName, this.factory})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterDetailsState();
}

class _FilterDetailsState extends State<FilterDetailsScreen> {
  Filter _filter;

  Map<String, Map<String, String>> _details = Map();

  final List<String> _platformPreviews = ["Image Preview", "Video Preview"];

  @override
  void initState() {
    super.initState();
    _loadFilterInfo();
  }

  @override
  void dispose() {
    if (_filter != null) {
      widget.factory.dispose(_filter);
    }
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FilterResultScreen(filter: _filter, video: true)),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.image),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilterResultScreen(filter: _filter)),
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
                        FilterPreviewScreen(filter: _filter, video: isVideo)),
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
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _filtersInfo),
      ),
    );
  }

  Future<void> _loadFilterInfo() async {
    _filter = await widget.factory.create(widget.filterName);
    _details = await _filter?.attributes;

    if (!mounted) return;

    setState(() {});
  }

  List<Widget> get _filtersInfo {
    List<Widget> items = [];

    for (var key in _details.keys) {
      items.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            key,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
        ),
      );
      var data = _details[key];
      items.addAll(_attributeDetails(data));
    }
    return items;
  }

  List<Widget> _attributeDetails(Map<String, String> items) {
    return items
        .map((key, value) => MapEntry(
            Text(key,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey)),
            Text(
              value,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            )))
        .entries
        .map((e) => [e.key, e.value])
        .expand((element) => element)
        .toList();
  }
}
