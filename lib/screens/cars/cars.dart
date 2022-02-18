import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/car.dart';
import '../../widgets/image_banner.dart';
import 'tile_overlay.dart';

class Cars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cars = Car.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) => _itemBuilder(context, cars[index]),
      ),
    );
  }

  _onCarTap(BuildContext context, int carID) {
    Navigator.pushNamed(context, carDetailRoute, arguments: {'id': carID});
  }

  Widget _itemBuilder(BuildContext context, Car car) {
    return GestureDetector(
      onTap: () => _onCarTap(context, car.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(assetPath: car.imagePath, height: 245.0),
            TileOverlay(car),
          ],
        ),
      ),
    );
  }
}