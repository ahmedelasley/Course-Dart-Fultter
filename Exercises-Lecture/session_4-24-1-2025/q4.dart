/*
Question 4
Write a Dart program that keeps asking the user to enter a number until they enter 0, using a
do-while loop.
*/

import 'dart:io';

void main() {
  int number;
  do {
    print("Please Enter Random Number : ");
    number = int.parse(stdin.readLineSync()!);
    if (number == 0) {
      break;
    }
  } while (number != 0);
}
