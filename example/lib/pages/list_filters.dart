import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';

import '../cubit/available_filters_cubit/available_filters_cubit.dart';
import '../widgets/list_filters_widget.dart';

class FilterListScreen extends StatelessWidget {
  const FilterListScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  final filtersFactory = const FilterFactory();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
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
        body: BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
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
            } else if (state is AvailableFiltersStateFailed) {
              return Center(child: Text(state.message));
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
