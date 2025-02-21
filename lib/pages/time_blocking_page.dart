import 'package:flutter/material.dart';

class TimeBlockingPage extends StatelessWidget {
  const TimeBlockingPage({super.key});
  static const String path = '/time_blocking';
  static const String title = 'Time Blocking';

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
