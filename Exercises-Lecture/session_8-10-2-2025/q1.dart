/*
Q1
Create a class Temperature with a private field _celsius.- Provide a setter celsius that checks if the input is in the range -100..100.
If valid → update _celsius, else print 'Invalid temperature'.- Provide a getter celsius.- Add a read-only computed getter fahrenheit that converts from _celsius.- In main(), demonstrate:
1. Setting a valid value and printing both celsius and fahrenheit.
2. Trying to set an invalid value (should print 'Invalid temperature').- Prove encapsulation: include a commented line temp._celsius = 999; showing direct access is not
allowed.
*/
void main() {
  var temp = Temperature();

  temp.celsius = 25;
  print('Celsius: ${temp.celsius}');
  print('Fahrenheit: ${temp.fahrenheit}');

  temp.celsius = 999;
}

class Temperature {
  double _celsius = 0;

  set celsius(double value) {
    if (value >= -100 && value <= 100) {
      _celsius = value;
    } else {
      print('Invalid temperature');
    }
  }

  // getter
  double get celsius => _celsius;

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}
