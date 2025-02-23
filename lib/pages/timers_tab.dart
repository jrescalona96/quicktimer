import 'package:flutter/material.dart';
import 'package:quicktimer/components/page_container.dart';
import 'package:quicktimer/components/timer_chip.dart';
import 'package:quicktimer/data/enums.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';
import 'package:quicktimer/pages/coffee/coffee_page.dart';

class TimersTab extends StatefulWidget {
  const TimersTab({super.key});
  static const Icon icon = Icon(Icons.timer);
  static const String name = 'Timers';

  @override
  State<TimersTab> createState() => _TimersTabState();
}

class _TimersTabState extends State<TimersTab> {
  final List<TimerItem> timers = [
    TimerItem(
      name: CoffeePage.title,
      category: TimerCategory.drinks,
      path: CoffeePage.path,
      tags: [TimerTags.coffee],
      isFavorite: true,
      assetImgPath: 'coffee_beans.png',
    ),
    TimerItem(
      name: 'Boiling Eggs',
      category: TimerCategory.drinks,
      path: '/boiling-eggs',
      tags: [TimerTags.egg],
      isFavorite: false,
      assetImgPath: 'boil_egg.png',
    ),
    TimerItem(
      name: 'Poaching Eggs',
      category: TimerCategory.drinks,
      path: '/poaching-eggs',
      tags: [TimerTags.egg],
      isFavorite: true,
      assetImgPath: 'poached_egg.png',
    ),
    TimerItem(
      name: 'Scrambled Eggs',
      category: TimerCategory.drinks,
      path: '/scrambled-eggs',
      tags: [TimerTags.egg],
      isFavorite: false,
      assetImgPath: 'scrambled_eggs.png',
    ),
    TimerItem(
      name: 'Pomodoro',
      category: TimerCategory.productivity,
      path: '/pomodoro',
      tags: [TimerTags.focus],
      isFavorite: false,
      assetImgPath: 'pomodoro.png',
    ),
    TimerItem(
      name: 'Time Boxing',
      category: TimerCategory.productivity,
      path: '/time-boxing',
      tags: [TimerTags.focus],
      isFavorite: true,
      assetImgPath: 'timebox.png',
    ),
    TimerItem(
      name: 'Time Blocking',
      category: TimerCategory.productivity,
      path: '/time-blocking',
      tags: [TimerTags.focus],
      isFavorite: false,
      assetImgPath: 'timebox.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: TimersTab.name,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: timers.length,
          itemBuilder: (_, i) => TimerChip(timer: timers[i]),
        ),
      ),
    );
  }
}
