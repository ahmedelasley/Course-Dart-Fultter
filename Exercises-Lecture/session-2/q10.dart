/*

Question 10 : 
a) Demonstrate var vs dynamic: create a dynamic d and assign a String, then an int,
printing after each.
b) Create var message = 'hello'; reassign another String and print it.
c) Declare num n = 12.3456; print n.toInt() and n.toStringAsFixed(2).

*/

void main() {
  // Part a
  /*
  1 - var
  var uses type inference: Dart determines the type from the first assigned value, and then the variable becomes that type permanently (you can’t later assign a different type).

  2- dynamic
  dynamic disables static type checking for that variable: it can hold values of any type at runtime (you can assign a String then later an int).

  */

  dynamic d = "Welcome";
  print(d);
  d = 1993;
  print(d);

  // Part b
  var message = 'hello';
  message = 'world';
  print(message);

  // Part c
  num n = 12.3456;
  print(n.toInt());
  print(n.toStringAsFixed(2));
}
