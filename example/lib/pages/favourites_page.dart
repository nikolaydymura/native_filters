import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Favorites')),
      ),
      body: ListView(
        children: const <Widget>[
          SizedBox(
            height: 50,
            child: Center(child: Text('Monochrome')),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text('Lookuptable')),
          ),
          SizedBox(
            height: 50,
            child: Center(child: Text('ColorCube ')),
          ),
        ],
      ),
    );
  }
}
