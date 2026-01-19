
/*
Question 2 :

Explain the differences between var, dynamic, and specific types like int/double/num/String.
Provide a short example.
;
Answer


- var: Dart infers the type from the first assigned value, and that type becomes fixed.
You cannot change the variable to a different type later.

- dynamic: The variable can hold any type, and the type can change during runtime.
More flexible, but less safe (type errors can happen at runtime).

- Explicit types (int, double, String, num): You declare the type yourself, and Dart enforces it.
ex
int = whole numbers (5)
double = decimal numbers ( 2.5)
num = can be int or double
String = text

*/

void main() {
  var message = "Welcome";
  message = 10; // error -> because message is  String

  dynamic age = 32;
  age = "Ahmed 32";

  int year= 1993;
  double salary = 5550.5;
  num expenses = 5000;
  expenses = 6500.25;
  
  String name = "Ahmed"

}
