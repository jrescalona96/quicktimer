import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: '',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: ColorScheme.of(context).error,
            ),
            SizedBox(height: 16),
            Text(
              '404 - Page Not Found',
              style: TextTheme.of(context).titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'This page is not ready yet.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
