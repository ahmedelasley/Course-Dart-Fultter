/*
Question 17
If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this.

Answer 
Data Type → dynamic
*/
void main() {
  dynamic value = "Hello"; // String
  print(value);

  value = 42; // int
  print(value);

  value = true; // bool
  print(value);
}
