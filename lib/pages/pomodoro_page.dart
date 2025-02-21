import 'package:flutter/material.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});
  static const String path = '/pomodoro';
  static const String title = 'Pomodoro';

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
