import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quicktimer/pages/home_page.dart';
import 'package:quicktimer/pages/timers_page.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';
import 'package:quicktimer/blocs/tab_navigation_event.dart';
import 'package:quicktimer/blocs/tab_navigation_state.dart';

class QuickTimerApp extends StatelessWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    TimersPage(),
    FavoritesPage(),
  ];

  const QuickTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TabNavigationBloc, TabNavigationState>(
        builder: (context, state) {
          return _widgetOptions.elementAt(state.index);
        },
      ),
      bottomNavigationBar: BlocBuilder<TabNavigationBloc, TabNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.timer),
                label: 'Timers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favorites',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.star),
              //   label: 'Favorites',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.history),
              //   label: 'History',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.settings),
              //   label: 'Settings',
              // ),
            ],
            currentIndex: state.index,
            onTap: (index) {
              context.read<TabNavigationBloc>().add(NavigateToTab(index));
            },
          );
        },
      ),
    );
  }
}
