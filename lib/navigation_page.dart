import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quicktimer/pages/favorites_tab.dart';
import 'package:quicktimer/pages/timers_tab.dart';
import 'package:quicktimer/blocs/tab_navigation_bloc.dart';
import 'package:quicktimer/blocs/tab_navigation_event.dart';
import 'package:quicktimer/blocs/tab_navigation_state.dart';

class NavigationPage extends StatelessWidget {
  static final List<Widget> _widgetOptions = <Widget>[
    TimersTab(),
    FavoritesTab(),
  ];

  const NavigationPage({super.key});

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
                icon: TimersTab.icon,
                label: TimersTab.name,
              ),
              BottomNavigationBarItem(
                icon: FavoritesTab.icon,
                label: FavoritesTab.name,
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
