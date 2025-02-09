import 'package:flutter/widgets.dart';

class PlatformUtil {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
}
