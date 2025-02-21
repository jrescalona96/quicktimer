import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quicktimer/components/page_container.dart';
import 'package:quicktimer/components/timer_chip.dart';
import 'package:quicktimer/data/enums.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';
import 'package:quicktimer/pages/coffee/aeropress_page.dart';
import 'package:quicktimer/pages/coffee/chemex_page.dart';
import 'package:quicktimer/pages/coffee/espresso_page.dart';
import 'package:quicktimer/pages/coffee/french_press_page.dart';
import 'package:quicktimer/pages/coffee/moka_pot_page.dart';
import 'package:quicktimer/pages/tea_page.dart';

class CoffeePage extends StatefulWidget {
  const CoffeePage({super.key});
  static const String title = 'Coffee';
  static const String path = '/coffee';

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  final List<TimerItem> timers = [
    TimerItem(
      name: ChemexPage.title,
      category: TimerCategory.drinks,
      path: ChemexPage.path,
      tags: [TimerTags.coffee],
      isFavorite: true,
      assetImgPath: 'chemex.png',
    ),
    TimerItem(
      name: EspressoPage.title,
      category: TimerCategory.drinks,
      path: EspressoPage.path,
      tags: [TimerTags.coffee],
      isFavorite: true,
      assetImgPath: 'espresso.png',
    ),
    TimerItem(
      name: FrenchPressPage.title,
      category: TimerCategory.drinks,
      path: FrenchPressPage.path,
      tags: [TimerTags.coffee],
      isFavorite: false,
      assetImgPath: 'french_press.png',
    ),
    TimerItem(
      name: AeropressPage.title,
      category: TimerCategory.drinks,
      path: AeropressPage.path,
      tags: [TimerTags.coffee],
      isFavorite: false,
      assetImgPath: 'aeropress.png',
    ),
    TimerItem(
      name: MokaPotPage.title,
      category: TimerCategory.drinks,
      path: MokaPotPage.path,
      tags: [TimerTags.coffee],
      isFavorite: false,
      assetImgPath: 'moka_pot.png',
    ),
    TimerItem(
      name: TeaPage.title,
      category: TimerCategory.drinks,
      path: TeaPage.path,
      tags: [TimerTags.tea],
      isFavorite: true,
      assetImgPath: 'tea.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: CoffeePage.title,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
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
