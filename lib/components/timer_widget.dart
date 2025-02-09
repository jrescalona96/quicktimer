import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quicktimer/components/timer_complete.dart';
import 'package:quicktimer/utils/platform_utils.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({
    super.key,
    required this.duration,
    required this.modifier,
  });

  final Duration duration;
  final Duration modifier;

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  /// Times are in seconds
  int remaining = 0;
  int modifier = 15;
  late int initial;
  Timer? timer;

  @override
  void initState() {
    // TODO(jre): fetch from default settings or use settings
    remaining = widget.duration.inSeconds;
    modifier = widget.modifier.inSeconds;
    initial = remaining;
    super.initState();
  }

  void setTimeRemaining() {
    setState(() {
      remaining--;
      if (remaining == 0) {
        timer?.cancel();
        showDialog(
          context: context,
          builder: (_) => TimerCompleteDialog(),
        );
        resetTimer();
      }
    });
  }

  void startTimer() {
    setTimeRemaining(); // need to call for the first tick/second
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      // this runs after the first tick/second
      setTimeRemaining();
    });
  }

  void stopTimer() {
    timer?.cancel();
  }

  void resetTimer() {
    setState(() {
      timer?.cancel();
      remaining = initial;
      timer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: remaining >= modifier
                  ? () {
                      setState(() {
                        remaining -= modifier;
                      });
                    }
                  : null,
              child: Text('-$modifier'),
            ),
            Center(
              child: Text(
                '$remaining',
                style: PlatformUtil.isMobile(context)
                    ? TextTheme.of(context).headlineMedium
                    : TextTheme.of(context).displaySmall,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  remaining += modifier;
                });
              },
              child: Text('+$modifier'),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: timer == null ? startTimer : null,
          child: Text('Start'),
        ),
        ElevatedButton(
          onPressed: timer != null && timer!.isActive ? stopTimer : null,
          child: Text('Stop'),
        ),
        ElevatedButton(
          onPressed: timer != null && timer!.isActive ? resetTimer : null,
          child: Text('Reset'),
        )
      ],
    );
  }
}
