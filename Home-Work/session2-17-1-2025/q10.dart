/*
Exercise 10:
a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
*/
void main() {
  // Part a

  // dynamic: can change type at runtime
  dynamic value = 10;
  print(value); // 10

  value = "Ten";
  print(value); // Ten

  // (extra) var example: type is inferred and stays the same after first assignment
  var fixed = 10;
  print(fixed); // 10
  // fixed = "Ten"; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.

  // Part b
  var greeting = 'Hi';
  greeting = 'Hello';
  print(greeting);

  // Part c
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
