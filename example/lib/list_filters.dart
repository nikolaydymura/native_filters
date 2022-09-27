import 'package:flutter/material.dart';
import 'widgets/list_filters_widget.dart';

class FilterListScreen extends StatefulWidget {
  const FilterListScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterListScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
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
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ListFiltersWidget(configurableFilters: true),
            ListFiltersWidget(configurableFilters: false),
          ],
        ),
      ),
    );
  }
}
