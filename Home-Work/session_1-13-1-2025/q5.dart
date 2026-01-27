/*
Question 5
What is the difference between var and dynamic in Dart? Provide an example of
each

Answer
var: Dart infers the type from the first value you assign. After that, the type is fixed and you can’t assign a different type later.

dynamic: Disables static type checking for that variable. It can hold any type and you can change the type at runtime.

*/
void main() {
  var message = "Hello"; // message is inferred as String
  message = "World"; // OK
  // x = 123;        // Error: int can't be assigned to String
  print(message);

  dynamic name = "Ahmed"; // name can be any type
  name = 123; // OK (type changed)
  print(name);
}
