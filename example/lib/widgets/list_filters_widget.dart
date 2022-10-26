import 'package:flutter/material.dart';

import 'package:native_filters/native_filters.dart';

import '../pages/filter_details.dart';

class ListFiltersWidget extends StatelessWidget {
  const ListFiltersWidget({super.key, required this.items});

  final List<FilterItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Row(
            children: [
              if (item.isVideoSupported) const Icon(Icons.video_call),
              if (item.isImageSupported) const Icon(Icons.photo),
            ],
          ),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FilterDetailsScreen(
                  filter: item,
                  factory: FilterFactory(),
                ),
              ),
            );
          },
        );
      },
      itemCount: items.length,
    );
  }
}
