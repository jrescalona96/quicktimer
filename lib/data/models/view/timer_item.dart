import 'package:quicktimer/data/enums.dart';

class TimerItem {
  TimerItem({
    required this.name,
    required this.path,
    required this.category,
    required this.isFavorite,
    this.imagePath,
    this.tags,
  });

  bool isFavorite;
  final String name;
  final String path;
  final String? imagePath;
  final TimerCategory category;
  final List<TimerTags>? tags;
}
