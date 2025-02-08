import 'package:flutter/material.dart';

class TimersPage extends StatefulWidget {
  const TimersPage({super.key});
  static const Icon icon = Icon(Icons.timer);
  static const String name = 'Timers';

  @override
  State<TimersPage> createState() => _TimersPageState();
}

class _TimersPageState extends State<TimersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timers'),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
