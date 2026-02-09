/*
Q6 Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
the number is even, false otherwise. In main(), test the method with one number.
*/

void main() {
  final check = NumberCheck(42);
  print('Value: ${check.value} | isEven: ${check.isEven()}');
}

class NumberCheck {
  final int value;

  NumberCheck(this.value);

  bool isEven() => value % 2 == 0;
}
