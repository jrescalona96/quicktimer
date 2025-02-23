import 'package:flutter/material.dart';

class EspressoPage extends StatelessWidget {
  const EspressoPage({super.key});
  static const String path = '/espresso';
  static const String title = 'Espresso';
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
