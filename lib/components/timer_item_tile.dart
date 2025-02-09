import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';
import 'package:quicktimer/utils/platform_utils.dart';

class TimerItemTile extends StatelessWidget {
  const TimerItemTile({
    super.key,
    required this.timer,
  });

  final TimerItem timer;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${timer.assetImgPath}'),
            fit: BoxFit.fill,
            opacity: 0.35,
          ),
        ),
        child: InkWell(
          onTap: () => context.push(timer.path),
          child: Stack(
            children: [
              Positioned(
                top: 2,
                right: 2,
                child: IconButton(
                  onPressed: () {
                    //TODO(jre): implement
                  },
                  icon: Icon(
                    timer.isFavorite
                        ? Icons.star_rounded
                        : Icons.star_border_rounded,
                    color: timer.isFavorite
                        ? ColorScheme.of(context).primary
                        : ColorScheme.of(context).tertiary,
                  ),
                ),
              ),
              // Need Column instead of positio to make ellipsis work
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      timer.name,
                      style: PlatformUtil.isMobile(context)
                          ? TextTheme.of(context).titleLarge
                          : TextTheme.of(context).headlineMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
