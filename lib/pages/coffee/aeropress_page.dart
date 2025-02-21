import 'package:flutter/material.dart';

class AeropressPage extends StatelessWidget {
  const AeropressPage({super.key});
  static const String path = '/aeropress';
  static const String title = 'Aeropress';

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
