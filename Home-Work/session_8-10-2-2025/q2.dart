/*
Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

class Car {
  String _brand = '';
  int _year = 0;

  String get brand => _brand;
  int get year => _year;

  set brand(String value) {
    if (value.trim().isEmpty) {
      print('Invalid brand');
      return;
    }
    _brand = value.trim();
  }

  set year(int value) {
    if (value < 1886) {
      print('Invalid year');
      return;
    }
    _year = value;
  }
}

void main() {
  final car1 = Car();
  car1.brand = 'Toyota';
  car1.year = 2020;
  print('Car1: ${car1.brand} - ${car1.year}');

  final car2 = Car();
  car2.brand = ''; // Invalid brand
  car2.year = 1500; // Invalid year
  print('Car2: ${car2.brand} - ${car2.year}'); // remains default values
}
