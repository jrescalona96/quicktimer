import 'package:flutter/material.dart';

class TimerCompleteDialog extends StatelessWidget {
  const TimerCompleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Timer Done'),
      content: Text('The timer has finished.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
