import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quicktimer/blocs/favorites/favorites_event.dart';
import 'package:quicktimer/blocs/favorites/favorites_state.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesInitial()) {
    on<FetchFavorites>((event, emit) {
      try {
        // TODO(fav): fetch from repo
        final List<TimerItem> favorites = [];
        emit(FetchFavoritesSuccess(favorites));
      } catch (e) {
        emit(FetchFavoritesFailed());
      }
    });

    on<AddFavorite>((event, emit) {
      try {
        // TODO(fav): add to repo
      } catch (e) {}
    });

    on<RemoveFavorite>((event, emit) {
      try {
        // TODO(fav): remove to repo
      } catch (e) {}
    });
  }
}
