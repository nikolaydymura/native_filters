import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/available_filters_cubit/available_filters_cubit.dart';
import '../widgets/list_filters_widget.dart';

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
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.amp_stories,
                ),
              ),
              Tab(
                icon: Icon(Icons.amp_stories_outlined),
              ),
              Tab(
                icon: Icon(Icons.videocam),
              ),
              Tab(
                icon: Icon(Icons.image),
              ),
            ],
          ),
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

              return BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
                builder: (context, state) {
                  if (state is AvailableFiltersStateSucceeded) {
                    return TabBarView(
                      children: <Widget>[
                        ListFiltersWidget(items: state.configurableFilters),
                        ListFiltersWidget(items: state.nonConfigurableFilters),
                        const Center(child: Text('in developing')),
                        const Center(child: Text('in developing')),
                      ],
                    );
                  }
                  return const CircularProgressIndicator();
                },
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
