/*
Question 3
Write a Dart program that calculates the factorial of a number using a while loop
*/

void main() {
  int number = 5;
  int result = 1;
  while (number > 1) {
    result *= number;
    number--;
  }
  print(result);
}
