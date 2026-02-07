/*
Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.
*/

void main() {
  final car1 = Car('Toyota', 2020);
  final car2 = Car('BMW', 2023);

  print('Car 1:');
  car1.printDetails();

  print('Car 2:');
  car2.printDetails();
}

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void printDetails() {
    print('Brand: $brand, Year: $year');
  }
}
