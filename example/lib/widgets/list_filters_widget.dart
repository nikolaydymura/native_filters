import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';

import '../cubit/available_filters_cubit/available_filters_cubit.dart';
import '../pages/filter_details.dart';

class ListFiltersWidget extends StatelessWidget {
  const ListFiltersWidget({
    super.key,
    required this.items,
  });

  final List<FilterItem> items;

  final filtersFactory = const FilterFactory();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
      builder: (context, state) {
        if (state is AvailableFiltersStateSucceeded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
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
        } else if (state is AvailableFiltersStateEmpty) {
          return Center(
            child: Text(state.message),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
