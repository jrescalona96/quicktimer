import 'package:flutter/material.dart';

class PastaPage extends StatelessWidget {
  const PastaPage({super.key});
  static const String path = '/pasta';
  static const String title = 'Pasta';

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
