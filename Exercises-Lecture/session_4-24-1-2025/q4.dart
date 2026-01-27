/*
Question 4
Write a Dart program that keeps asking the user to enter a number until they enter 0, using a
do-while loop.
*/

import 'dart:io';

void main() {
  int number;

  print("Please Enter Random Number : ");
  String? input = stdin.readLineSync();
  number = int.parse(input!);

  if (number == 0) {
    print("Number is Invalid");
  } else {
    do {
      print("Please Enter Random Number : ");
      String? input = stdin.readLineSync();
      number = int.parse(input!);
    } while (number != 0);
  }
}
