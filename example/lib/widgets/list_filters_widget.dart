import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';

import '../cubit/available_filters_cubit/available_filters_cubit.dart';
import '../pages/filter_details.dart';
import '../pages/filter_lut_details.dart';

class ListFiltersWidget extends StatelessWidget {
  const ListFiltersWidget({super.key, required this.items});

  final List<FilterItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = items[index];
        final bool verified = isFilterVerified(item.name);
        return Container(
          color: verified
              ? Colors.greenAccent.withAlpha(120)
              : Colors.orangeAccent.withAlpha(120),
          child: ListTile(
            leading: verified
                ? const Icon(Icons.done)
                : const Icon(Icons.more_horiz),
            title: Text(item.name),
            subtitle: Row(
              children: [
                if (item.isImageSupported) const Icon(Icons.photo),
                if (item.isVideoSupported) const Icon(Icons.video_call),
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (item.name == 'CIColorCube' ||
                        item.name == 'GPULookup') {
                      return FilterLutDetailsScreen(
                        filter: item,
                        factory: FilterFactory(),
                      );
                    }
                    return FilterDetailsScreen(
                      filter: item,
                      factory: FilterFactory(),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
