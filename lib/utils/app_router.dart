import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';
import 'package:quicktimer/pages/chemex_page.dart';
import 'package:quicktimer/pages/page_not_found.dart';
import 'package:quicktimer/quicktimer_app.dart';

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
          child: QuickTimerApp(),
        ),
      ),
      GoRoute(
        path: ChemexPage.path,
        builder: (_, state) => ChemexPage(),
      ),
    ],
  );

  GoRouter get router => _router;
}
