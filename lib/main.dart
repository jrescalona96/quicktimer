import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quicktimer/quicktimer_app.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickTimer',
      theme: ThemeData.light().copyWith(
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<TabNavigationBloc>(create: (_) => TabNavigationBloc())
        ],
        child: QuickTimerApp(),
      ),
    );
  }
}
