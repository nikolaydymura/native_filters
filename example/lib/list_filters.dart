import 'package:flutter/material.dart';
import 'dart:async';

import 'package:native_filters/native_filters.dart';
import 'filter_details.dart';

class FilterListScreen extends StatefulWidget {
  const FilterListScreen({Key? key}) : super(key: key);

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterListScreen> {
  final filtersFactory = const FilterFactory();
  List<FilterItem> _availableFilters = [];

  @override
  void initState() {
    super.initState();
    _loadFilters();
  }

  Future<void> _loadFilters() async {
    List<FilterItem> filters = await filtersFactory.availableFilters;

    if (!mounted) return;

    setState(() {
      _availableFilters = filters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters example'),
      ),
      body: FutureBuilder<List<FilterItem>>(
        future: filtersFactory.availableFilters,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final items = snapshot.data;
            if (items == null || items.isEmpty) {
              return const Center(
                child: Text('There is no available filters'),
              );
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Row(
                    children: [
                      if (item.isImageSupported)
                        const Icon(Icons.photo),
                      if (item.isVideoSupported)
                        const Icon(Icons.video_call),
                    ],
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterDetailsScreen(
                          filter: item,
                          factory: filtersFactory,
                        ),
                      ),
                    );
                  },
                );
              },
              itemCount: items.length,
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
