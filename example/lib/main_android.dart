import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _filtersFactory = const FilterFactory();
  String _text = null;

  @override
  void initState() {
    super.initState();
    _prepare().then((_) => setState(() {}));
  }

  Future<void> _prepare() async {
    final filters = await _filtersFactory.availableFilters;
    final values = Set<String>();
    for (var name in filters) {
      final filter = await _filtersFactory.create(name);
      final attrs = await filter.attributes;
      await _filtersFactory.dispose(filter);
    }
    _text = values.join("\n");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initializing...'),
      ),
      body: Center(
        child: _text == null
            ? CircularProgressIndicator()
            : SingleChildScrollView(child: Text(_text)),
      ),
    );
  }
}
