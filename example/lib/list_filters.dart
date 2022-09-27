import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';

import 'cubit/sort_cubit/sort_cubit.dart';
import 'filter_details.dart';

class FilterListScreen extends StatefulWidget {
  const FilterListScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterListScreen> {
  final filtersFactory = const FilterFactory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<SortCubit, SortState>(
              builder: (context, state) {
                if (state is SortInitial) {
                  context.read<SortCubit>().fetchSortData(filtersFactory);
                } else if (state is SortSucceeded) {
                  final items = state.sortedList;
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Row(
                          children: [
                            if (item.isImageSupported) const Icon(Icons.photo),
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
                } else if (state is SortEmpty) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
