import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('favorites')),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.monochrome_photos,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.loupe,
                ),
              ),
              Tab(
                icon: Icon(Icons.invert_colors),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: Text('Monochrome')),
            Center(child: Text('Lookuptable')),
            Center(child: Text('ColorCube there')),
          ],
        ),
      ),
    );
  }
}
