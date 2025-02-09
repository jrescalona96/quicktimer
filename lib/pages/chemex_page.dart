import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';

class ChemexPage extends StatefulWidget {
  const ChemexPage({super.key});
  static const String path = '/chemex';
  final String title = 'Chemex';

  @override
  State<ChemexPage> createState() => _ChemexPageState();
}

class _ChemexPageState extends State<ChemexPage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: widget.title,
      body: Center(
        child: Text('YOYO'),
      ),
    );
  }
}
