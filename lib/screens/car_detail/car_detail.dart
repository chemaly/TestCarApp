import 'package:flutter/material.dart';
import 'package:flutter_test_car/screens/car_detail/text_section.dart';
import 'package:flutter_test_car/widgets/image_banner.dart';
import 'package:flutter_test_car/widgets/car_tile.dart';
import '../../models/car.dart';

class CarDetail extends StatelessWidget {
  final int _carID;

  CarDetail(this._carID);

  @override
  Widget build(BuildContext context) {
    final car = Car.fetchByID(_carID);

    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: SingleChildScrollView(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(assetPath: car.imagePath),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: CarTile(car: car),
            ), ...textSections(car),
          ],
        )
      )
    );
  }

  List<Widget> textSections(Car car) {
    return car.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}