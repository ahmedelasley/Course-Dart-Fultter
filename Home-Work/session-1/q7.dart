/*
Question 7
Given this code, identify any errors and explain why they occur: ```dart void main()
{ String name = "Alice"; name = 123; print(name); } ```


Answer
Error:
name = 123; is invalid because name is declared as String, so it can only store string values.
But 123 is an int, and Dart is statically typed, meaning you can’t assign a value of a different type to a variable.

*/

void main() {
  String name = "Alice";
  name = 123;
  print(name);
}
