import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';
// import 'package:quicktimer/pages/coffee/aeropress_page.dart';
import 'package:quicktimer/pages/coffee/chemex_page.dart';
import 'package:quicktimer/pages/coffee/coffee_page.dart';
// import 'package:quicktimer/pages/coffee/cold_brew_page.dart';
// import 'package:quicktimer/pages/egg_page.dart';
// import 'package:quicktimer/pages/coffee/espresso_page.dart';
// import 'package:quicktimer/pages/coffee/french_press_page.dart';
// import 'package:quicktimer/pages/coffee/moka_pot_page.dart';
import 'package:quicktimer/pages/page_not_found.dart';
// import 'package:quicktimer/navigation_page.dart';
// import 'package:quicktimer/pages/pasta_page.dart';
// import 'package:quicktimer/pages/pomodoro_page.dart';
// import 'package:quicktimer/pages/tea_page.dart';
// import 'package:quicktimer/pages/time_blocking_page.dart';
// import 'package:quicktimer/pages/time_boxing_page.dart';

class AppRouter {
  final GoRouter _router = GoRouter(
    errorBuilder: (_, state) => PageNotFound(),
    routes: [
      GoRoute(
        path: '/',
        builder: (_, state) => MultiBlocProvider(
          providers: [
            BlocProvider<TabNavigationBloc>(create: (_) => TabNavigationBloc())
          ],
          child: CoffeePage(),
          // child: NavigationPage(),
        ),
      ),
      GoRoute(
        path: CoffeePage.path,
        builder: (_, state) => CoffeePage(),
      ),
      GoRoute(
        path: ChemexPage.path,
        builder: (_, state) => ChemexPage(),
      ),
      // GoRoute(
      //   path: AeropressPage.path,
      //   builder: (_, state) => AeropressPage(),
      //   // builder: (_, state) => AeropressPage(),
      // ),
      // GoRoute(
      //   path: FrenchPressPage.path,
      //   builder: (_, state) => FrenchPressPage(),
      //   // builder: (_, state) => FrenchPressPage(),
      // ),
      // GoRoute(
      //   path: MokaPotPage.path,
      //   builder: (_, state) => MokaPotPage(),
      //   // builder: (_, state) => MokaPotPage(),
      // ),
      // GoRoute(
      //   path: ColdBrewPage.path,
      //   builder: (_, state) => ColdBrewPage(),
      //   // builder: (_, state) => ColdBrewPage(),
      // ),
      // GoRoute(
      //   path: Egg.path,
      //   builder: (_, state) => Egg(),
      //   // builder: (_, state) => Egg(),
      // ),
      // GoRoute(
      //   path: EspressoPage.path,
      //   builder: (_, state) => EspressoPage(),
      //   // builder: (_, state) => EspressoPage(),
      // ),
      // GoRoute(
      //   path: PastaPage.path,
      //   builder: (_, state) => PastaPage(),
      //   // builder: (_, state) => PastaPage(),
      // ),
      // GoRoute(
      //   path: TeaPage.path,
      //   builder: (_, state) => TeaPage(),
      //   // builder: (_, state) => TeaPage(),
      // ),
      // GoRoute(
      //   path: PomodoroPage.path,
      //   builder: (_, state) => PomodoroPage(),
      //   // builder: (_, state) => PomodoroPage(),
      // ),
      // GoRoute(
      //   path: TimeBlockingPage.path,
      //   builder: (_, state) => TimeBlockingPage(),
      //   // builder: (_, state) => TimeBlockingPage(),
      // ),
      // GoRoute(
      //   path: TimeBoxingPage.path,
      //   builder: (_, state) => TimeBoxingPage(),
      //   // builder: (_, state) => TimeBoxingPage(),
      // ),
    ],
  );

  GoRouter get router => _router;
}
