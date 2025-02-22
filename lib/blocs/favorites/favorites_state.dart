import 'package:quicktimer/data/models/view/timer_item.dart';

abstract class FavoritesState {
  const FavoritesState(this.favorites);
  final List<TimerItem> favorites;
}

class FavoritesInitial extends FavoritesState {
  FavoritesInitial() : super([]);
}

class FetchFavoritesSuccess extends FavoritesState {
  FetchFavoritesSuccess(super.favorites);
}

class FetchFavoritesFailed extends FavoritesState {
  FetchFavoritesFailed() : super([]);
}
