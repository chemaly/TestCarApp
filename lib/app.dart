import 'package:flutter/material.dart';
import 'screens/cars/cars.dart';
import 'screens/car_detail/car_detail.dart';
import 'style.dart';

const carsRoute = '/';
const carDetailRoute = '/car_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cars(),
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final arguments = settings.arguments as Map;
      Widget screen;
      switch (settings.name) {
        case carsRoute:
          screen = Cars();
          break;
        case carDetailRoute:
          screen = CarDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: appBarTextStyle,
        ),
        textTheme: const TextTheme(
          headline1: titleTextStyle,
          subtitle1: subtitleTextStyle,
          caption: captionTextStyle,
          bodyText1: bodyTextStyle,
        )
    );
  }
}