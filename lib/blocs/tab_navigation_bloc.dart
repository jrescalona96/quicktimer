import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quicktimer/blocs/tab_navigation_event.dart';
import 'package:quicktimer/blocs/tab_navigation_state.dart';

class TabNavigationBloc extends Bloc<TabNavigationEvent, TabNavigationState> {
  TabNavigationBloc() : super(TabNavigationInital()) {
    on<NavigateToTab>((event, emit) {
      emit(TabNavigationSuccess(event.index));
    });
  }
}
