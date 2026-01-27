/*
Question 2
Write a Dart program that prints only even numbers between 1 and 20 using a for loop.

*/

void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
