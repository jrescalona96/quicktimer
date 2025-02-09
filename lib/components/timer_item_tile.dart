import 'package:flutter/material.dart';
import 'package:quicktimer/data/models/view/timer_item.dart';

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
            fit: BoxFit.cover,
            opacity: 0.35,
          ),
        ),
        child: InkWell(
          onTap: () {
            print('TODO: Need to implement navigation to ${timer.path}');
          },
          child: Stack(
            children: [
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {},
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    timer.name,
                    textAlign: TextAlign.center,
                    style: MediaQuery.of(context).size.width > 600
                        ? TextTheme.of(context).headlineMedium
                        : TextTheme.of(context).titleLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
