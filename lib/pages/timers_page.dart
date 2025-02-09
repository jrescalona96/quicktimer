import 'package:flutter/material.dart';
import 'package:quicktimer/components/timer_item_tile.dart';
import 'package:quicktimer/data/enums.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';

class TimersPage extends StatefulWidget {
  const TimersPage({super.key});
  static const Icon icon = Icon(Icons.timer);
  static const String name = 'Timers';

  @override
  State<TimersPage> createState() => _TimersPageState();
}

class _TimersPageState extends State<TimersPage> {
  final List<TimerItem> timers = [
    TimerItem(
      name: 'Chemex',
      category: TimerCategory.drinks,
      path: 'ChemexPage',
      tags: [TimerTags.coffee],
      isFavorite: true,
    ),
    TimerItem(
      name: 'V20',
      category: TimerCategory.drinks,
      path: 'V20Page',
      tags: [TimerTags.coffee],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Espresso Maker',
      category: TimerCategory.drinks,
      path: 'EspressoMakerPage',
      tags: [TimerTags.coffee],
      isFavorite: true,
    ),
    TimerItem(
      name: 'French Press',
      category: TimerCategory.drinks,
      path: 'FrenchPressPage',
      tags: [TimerTags.coffee],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Aeropress',
      category: TimerCategory.drinks,
      path: 'AeropressPage',
      tags: [TimerTags.coffee],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Black Tea',
      category: TimerCategory.drinks,
      path: 'BlackTeaPage',
      tags: [TimerTags.tea],
      isFavorite: true,
    ),
    TimerItem(
      name: 'MokaPot',
      category: TimerCategory.drinks,
      path: 'MokaPotPage',
      tags: [TimerTags.coffee],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Boiling Eggs',
      category: TimerCategory.drinks,
      path: 'BoilingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Poaching Eggs',
      category: TimerCategory.drinks,
      path: 'PoachingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: true,
    ),
    TimerItem(
      name: 'Scrambling Eggs',
      category: TimerCategory.drinks,
      path: 'ScramblingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Pomodoro',
      category: TimerCategory.productivity,
      path: 'PomodoroPage',
      tags: [TimerTags.focus],
      isFavorite: false,
    ),
    TimerItem(
      name: 'Timeboxing',
      category: TimerCategory.productivity,
      path: 'TimeboxingPage',
      tags: [TimerTags.focus],
      isFavorite: true,
    ),
    TimerItem(
      name: 'Timeblocking',
      category: TimerCategory.productivity,
      path: 'TimeblockingPage',
      tags: [TimerTags.focus],
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timers')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: timers.length,
          itemBuilder: (_, i) => TimerItemTile(timer: timers[i]),
        ),
      ),
    );
  }
}
