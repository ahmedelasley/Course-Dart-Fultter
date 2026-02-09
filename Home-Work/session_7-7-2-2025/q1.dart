/*
Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.
*/

void main() {
  final city1 = City(name: 'Riyadh', population: 7600000);
  final city2 = City(name: 'Jeddah', population: 4000000);

  city1.printDetails();
  city2.printDetails();
}

class City {
  final String name;
  final int population;

  City({required this.name, required this.population});

  void printDetails() {
    print('City: $name | Population: $population');
  }
}
