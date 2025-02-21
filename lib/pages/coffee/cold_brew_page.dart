import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';

class ColdBrewPage extends StatelessWidget {
  const ColdBrewPage({super.key});
  static const String path = '/cold_brew';
  static const String title = 'Cold Brew';
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      body: Center(
        child: Text(
          'Sorry! This page is still under construction. Check back in later.',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      title: title,
    );
  }
}
