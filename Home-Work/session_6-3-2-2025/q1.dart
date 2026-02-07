/*
Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method.
*/

void main() {
  var calc = Calculator(10, 25.5);
  calc.addNumbers();
}

class Calculator {
  double num1;
  double num2;

  Calculator(this.num1, this.num2);

  void addNumbers() {
    double sum = num1 + num2;
    print('Sum = $sum');
  }
}
