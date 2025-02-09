import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';
import 'package:quicktimer/pages/chemex_page.dart';
import 'package:quicktimer/pages/page_not_found.dart';
import 'package:quicktimer/navigation_page.dart';

class AppRouter {
  final GoRouter _router = GoRouter(
    errorBuilder: (_, state) => PageNotFound(),
    routes: [
      GoRoute(
        path: '/nav',
        builder: (_, state) => MultiBlocProvider(
          providers: [
            BlocProvider<TabNavigationBloc>(create: (_) => TabNavigationBloc())
          ],
          child: NavigationPage(),
        ),
      ),
      GoRoute(
        path: '/', //ChemexPage.path,
        builder: (_, state) => ChemexPage(),
      ),
    ],
  );

  GoRouter get router => _router;
}
