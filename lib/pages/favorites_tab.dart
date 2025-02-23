import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});
  static const Icon icon = Icon(Icons.star);
  static const String name = 'Favorites';

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: FavoritesTab.name,
      body: Center(
        child: const Text('hey'),
      ),
    );
  }
}
