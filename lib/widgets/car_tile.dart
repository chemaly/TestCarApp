import 'package:flutter/material.dart';
import '../models/car.dart';
import '../style.dart';

const CarTileHeight = 100.0;

class CarTile extends StatelessWidget {
  final Car car;
  final bool darkTheme;

  CarTile({required this.car, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? textColorLight : textColorDark;

    return Container (
      padding: EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
      height: CarTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            car.name.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.headline1?.copyWith(color: textColor),
          ),
          Text(
            car.engine.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            car.year.toUpperCase(),
            style: Theme.of(context).textTheme.caption?.copyWith(color: textColor),
          ),
        ],
      )
    );
  }
}