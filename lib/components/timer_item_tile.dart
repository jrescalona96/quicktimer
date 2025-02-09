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
    return InkWell(
      onTap: () {
        print('TODO: Need to implement navigation to ${timer.path}');
      },
      child: Stack(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        'https://img.freepik.com/free-vector/coffee-cup-with-heart-outline-flat_78370-7116.jpg?semt=ais_hybrid',
                        height: 75,
                        width: 75,
                      ),
                    ),
                    Text(
                      timer.name,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
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
          )
        ],
      ),
    );
  }
}
