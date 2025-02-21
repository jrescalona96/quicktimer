import 'package:flutter/material.dart';

class FrenchPressPage extends StatelessWidget {
  const FrenchPressPage({super.key});
  static const String path = '/french_press';
  static const String title = 'French Press';
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
