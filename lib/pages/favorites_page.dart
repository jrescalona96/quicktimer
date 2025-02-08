import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  static const Icon icon = Icon(Icons.star);
  static const String name = 'Favorites';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(child: const Text('hey')),
    );
  }
}
