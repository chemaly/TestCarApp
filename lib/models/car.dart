import 'car_fact.dart';

class Car {
  final int id;
  final String name;
  final String imagePath;
  final String engine;
  final String year;
  final List<CarFact> facts;

  Car(this.id, this.name, this.imagePath, this.year, this.engine, this.facts);

  static List<Car> fetchAll() {
    return [
      Car(1, 'Audi R8', 'assets/images/audi_r8.jpg',
          'V10', '2020', [
          CarFact('Summary', 'To honor the ten year anniversary of the V10 engine '
              'in the Audi R8, the four-ringed brand launched a special edition '
              'model called the “Decennium“. Meaning “Decade” in Latin, the '
              'Decennium is a celebratory model that will honor the R8 V10’s '
              'decade of existence right before it fades away into the annals of '
              'automotive history. Basically, that’s just a long-winded way of '
              'saying the R8 is gonna die off soon and the Decennium is a way to '
              'make some extra money on it.'),
          CarFact('Specs', 'That changed today when Audi released official '
              'pricing for the 2020 R8 lineup. The base R8 with a V-10 tuned to '
              'make 562 hp and 406 lb-ft of torque will now cost \$171,150 '
              'including destination. Stepping up to the 602-hp R8 V10 Performance '
              'brings the price to \$197,150. And if you want the R8 V10 Decennium, '
              'it will cost you \$216,245'),
      ]),
      Car(2, 'Lamborghini Huracan', 'assets/images/lamborghini-huracan-evo.jpg',
          'V10', '2020', [
        CarFact('Summary', 'The Huracán EVO is the evolution of the most '
            'successful V10-powered Lamborghini ever. The result of fine-tuning '
            'and refining existing features, combined with new design solutions '
            'that increase performance, the car stands out for its ability to '
            'anticipate and cater to the driver’s behavior, expectations and '
            'desires.'),
        CarFact('Specs', 'How much should I pay for a 2020 Lamborghini Huracan? '
            'The least-expensive 2020 Lamborghini Huracan is the 2020 '
            'Lamborghini Huracan EVO 2dr Coupe AWD (5.2L 10cyl 7AM). '
            'Including destination charge, it arrives with a Manufacturer\'s '
            'Suggested Retail Price (MSRP) of about \$261,274.'),
      ]),
      Car(3, 'Mustang GT350R', 'assets/images/Mustang-GT350R.jpg',
          'V8', '2020', [
        CarFact('Summary', 'The 2020 Ford Mustang Shelby GT350 is a powerful, '
            'high-strung muscle car designed to rock race tracks while still '
            'being at home on the street. ... The GT350\'s suspension is tuned '
            'tautly enough to handle cornering at race-track speeds without '
            'being bone-jarring on the street, and it has brakes to match.'),
        CarFact('Specs', 'Propelled by a 5.2-liter V8 using an exotic flat-plane'
            ' crankshaft, the GT350 howls its way to 529 horsepower at an '
            'eye-watering 8,250 rpm. Torque is similarly impressive at 429 '
            'lb-ft.'),
      ]),
    ];
  }

  static Car fetchByID(int carID) {
    final Car _carNotFound =
      Car(0, 'Car Not Found', 'assets/images/404_error_image.png', 'NA', 'NA',[
        CarFact('Engine', '???'),
        CarFact('Year', '???'),
      ]);

    List<Car> cars = Car.fetchAll();
    for (var i = 0; i < cars.length; i++) {
      if (cars[i].id == carID) {
        return cars[i];
      }
    }
    return _carNotFound;
  }
}