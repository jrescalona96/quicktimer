import 'package:flutter/material.dart';

class TeaPage extends StatelessWidget {
  const TeaPage({super.key});
  static const String path = '/tea';
  static const String title = 'Tea';

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
