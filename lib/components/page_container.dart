import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.title,
    required this.body,
  });
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    // TODO(jre): add any loaders here
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: context.canPop()
            ? BackButton(onPressed: () => context.pop())
            : null,
      ),
      body: body,
    );
  }
}
