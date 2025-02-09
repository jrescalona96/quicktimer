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
        assetImgPath: 'chemex.png'),
    TimerItem(
        name: 'V20',
        category: TimerCategory.drinks,
        path: 'V20Page',
        tags: [TimerTags.coffee],
        isFavorite: false,
        assetImgPath: 'v20.png'),
    TimerItem(
        name: 'Espresso Maker',
        category: TimerCategory.drinks,
        path: 'EspressoMakerPage',
        tags: [TimerTags.coffee],
        isFavorite: true,
        assetImgPath: 'espresso.png'),
    TimerItem(
        name: 'French Press',
        category: TimerCategory.drinks,
        path: 'FrenchPressPage',
        tags: [TimerTags.coffee],
        isFavorite: false,
        assetImgPath: 'french_press.png'),
    TimerItem(
        name: 'Aeropress',
        category: TimerCategory.drinks,
        path: 'AeropressPage',
        tags: [TimerTags.coffee],
        isFavorite: false,
        assetImgPath: 'aeropress.png'),
    TimerItem(
      name: 'Black Tea',
      category: TimerCategory.drinks,
      path: 'BlackTeaPage',
      tags: [TimerTags.tea],
      isFavorite: true,
      assetImgPath: 'tea.png',
    ),
    TimerItem(
      name: 'MokaPot',
      category: TimerCategory.drinks,
      path: 'MokaPotPage',
      tags: [TimerTags.coffee],
      isFavorite: false,
      assetImgPath: 'moka_pot.png',
    ),
    TimerItem(
      name: 'Boiling Eggs',
      category: TimerCategory.drinks,
      path: 'BoilingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: false,
      assetImgPath: 'boil_egg.png',
    ),
    TimerItem(
      name: 'Poaching Eggs',
      category: TimerCategory.drinks,
      path: 'PoachingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: true,
      assetImgPath: 'poached_egg.png',
    ),
    TimerItem(
      name: 'Scrambled Eggs',
      category: TimerCategory.drinks,
      path: 'ScramblingEggsPage',
      tags: [TimerTags.egg],
      isFavorite: false,
      assetImgPath: 'scrambled_eggs.png',
    ),
    TimerItem(
      name: 'Pomodoro',
      category: TimerCategory.productivity,
      path: 'PomodoroPage',
      tags: [TimerTags.focus],
      isFavorite: false,
      assetImgPath: 'pomodoro.png',
    ),
    TimerItem(
      name: 'Time Boxing',
      category: TimerCategory.productivity,
      path: 'TimeBoxingPage',
      tags: [TimerTags.focus],
      isFavorite: true,
      assetImgPath: 'timebox.png',
    ),
    TimerItem(
      name: 'Time Blocking',
      category: TimerCategory.productivity,
      path: 'TimeBlockingPage',
      tags: [TimerTags.focus],
      isFavorite: false,
      assetImgPath: 'timebox.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timers')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: timers.length,
          itemBuilder: (_, i) => TimerItemTile(timer: timers[i]),
        ),
      ),
    );
  }
}
