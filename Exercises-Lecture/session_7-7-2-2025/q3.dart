/*
Q3. Multiple Objects in a List - Create a class Car with attributes brand and year. - In main(), create
a list of 3 car objects. - Print only the cars made after 2015
*/

void main() {
  List<Car> cars = [
    Car('BMW', 2018),
    Car('Toyota', 2016),
    Car('Forda', 2015),
  ];

  print("Cars made after 2015");
  for (var car in cars) {
    if (car.year > 2015) {
      print("- ${car.brand} (${car.year})");
    }
  }
}

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);
}
