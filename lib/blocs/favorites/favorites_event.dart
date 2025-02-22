abstract class FavoritesEvent {
  const FavoritesEvent(this.id);
  final String? id;
}

class AddFavorite extends FavoritesEvent {
  const AddFavorite(super.id);
}

class AddFavoriteSuccess extends FavoritesEvent {
  const AddFavoriteSuccess(super.id);
}

class AddFavoriteFailed extends FavoritesEvent {
  const AddFavoriteFailed(super.id);
}

class RemoveFavorite extends FavoritesEvent {
  const RemoveFavorite(super.id);
}

class RemoveFavoriteFailed extends FavoritesEvent {
  const RemoveFavoriteFailed(super.id);
}

class RemoveFavoriteSuccess extends FavoritesEvent {
  const RemoveFavoriteSuccess(super.id);
}

class FetchFavorites extends FavoritesEvent {
  FetchFavorites() : super('');
}
