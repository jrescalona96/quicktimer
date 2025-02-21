import 'package:flutter/material.dart';

class MokaPotPage extends StatelessWidget {
  const MokaPotPage({super.key});
  static const String path = '/moka_pot';
  static const String title = 'Moka Pot';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sorry! This page is still under construction. Check back in later.',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
