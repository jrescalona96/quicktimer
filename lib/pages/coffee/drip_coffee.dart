import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';
import 'package:quicktimer/components/timer_widget.dart';
import 'package:quicktimer/utils/platform_utils.dart';

class Chemex extends StatelessWidget {
  const Chemex({super.key});
  static const String path = '/chemex';
  static const String title = 'Chemex';

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: title,
      body: PlatformUtil.isMobile(context)
          ? SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child:
                          Image.asset('assets/images/chemex.png', width: 300),
                    ),
                    TimerWidget(
                      duration: const Duration(seconds: 45),
                      modifier: const Duration(seconds: 15),
                    ),
                  ],
                ),
              ),
            ))
          : Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/images/chemex.png', width: 300),
                  ),
                  TimerWidget(
                    duration: const Duration(seconds: 45),
                    modifier: const Duration(seconds: 15),
                  ),
                ],
              ),
            ),
    );
  }
}
