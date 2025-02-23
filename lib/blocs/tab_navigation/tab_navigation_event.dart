abstract class TabNavigationEvent {}

class NavigateToTab extends TabNavigationEvent {
  NavigateToTab(this.index);
  final int index;
}
