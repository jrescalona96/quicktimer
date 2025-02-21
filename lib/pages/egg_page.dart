import 'package:flutter/material.dart';

class Egg extends StatelessWidget {
  const Egg({super.key});
  static const String path = '/egg';
  static const String title = 'Egg';

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
