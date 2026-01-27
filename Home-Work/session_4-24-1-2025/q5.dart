/*
Q5
Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
*/
void main() {
  String text = 'EGP 12.50';
  String numberPart = text.split(' ').last; // "12.50"
  double value = double.parse(numberPart);
  print(value); // 12.5
}
