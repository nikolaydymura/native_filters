import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:native_filters/native_filters.dart';

import '../cubit/available_filters_cubit/available_filters_cubit.dart';
import '../pages/filter_details.dart';

class ListFiltersWidget extends StatelessWidget {
  const ListFiltersWidget({super.key, required this.items});

  final List<FilterItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = items[index];
        return BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
          builder: (context, state) {
            return ListTile(
              title: Text(item.name),
              subtitle: Row(
                children: [
                  if (item.isVideoSupported) const Icon(Icons.video_call),
                  if (item.isImageSupported) const Icon(Icons.photo),
                  if (context
                      .read<AvailableFiltersCubit>()
                      .verifiedFilters(item.name))
                    const Icon(Icons.done),
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
        );
      },
      itemCount: items.length,
    );
  }
}
