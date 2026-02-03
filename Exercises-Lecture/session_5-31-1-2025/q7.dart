/*
Q7: Temperature Converter
- Convert this list of Celsius temps [0, 20, 37, 100] to Fahrenheit.
- Print only the converted values above 90°F.
*/

void main() {
  List<num> celsius = [0, 20, 37, 100];

  List<double> fahrenheit = convertToFahrenheit(celsius);

  List<double> above90 = filterAbove90(fahrenheit);

  print(fahrenheit); // [32.0, 68.0, 98.6, 212.0]
  print(above90); // [98.6, 212.0]
}

List<double> convertToFahrenheit(List<num> celsius) {
  List<double> result = [];
  for (int i = 0; i < celsius.length; i++) {
    double f = celsius[i] * 9 / 5 + 32;
    result.add(f);
  }
  return result;
}

List<double> filterAbove90(List<double> fahrenheit) {
  List<double> result = [];
  for (int i = 0; i < fahrenheit.length; i++) {
    if (fahrenheit[i] > 90) {
      result.add(fahrenheit[i]);
    }
  }
  return result;
}
