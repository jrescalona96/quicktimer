abstract class TabNavigationState {
  const TabNavigationState(this.index);
  final int index;
}

class TabNavigationInital extends TabNavigationState {
  TabNavigationInital() : super(0);
}

class TabNavigationSuccess extends TabNavigationState {
  TabNavigationSuccess(super.index);
}
