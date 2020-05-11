import 'package:flutter/material.dart';
import 'dart:async';

import 'package:native_filters/core_image/filter.dart';
import 'package:nativefilters_example/filter_details.dart';

class FilterListScreen extends StatefulWidget {
  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterListScreen> {
  final filtersFactory = const CIFilterFactory();
  List<String> _availableFilters = [];

  @override
  void initState() {
    super.initState();
    _loadFilters();
  }

  Future<void> _loadFilters() async {
    List<String> filters = await filtersFactory.availableFilters;

    if (!mounted) return;

    setState(() {
      _availableFilters = filters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters exmaple'),
      ),
      body: _availableFilters.isEmpty ? _emptyListView : _filtersListView,
    );
  }

  Widget get _emptyListView {
    return Center(
      child: Text('There is no avaiable filters'),
    );
  }

  Widget get _filtersListView {
    return ListView(children: _availableFilters.map(_listItem).toList());
  }

  Widget _listItem(String name) {
    return ListTile(
        title: Text(name),
        trailing: Icon(Icons.navigate_next),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FilterDetailsScreen(
                    filterName: name, factory: filtersFactory)),
          );
        });
  }
}
