/*
Q2. Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
and n, and also print how many odd numbers were found.

*/

import 'dart:io';

void main() {
  stdout.write('Enter n: ');
  String input = stdin.readLineSync()!.trim();
  int n = int.parse(input);

  int count = 0;

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }

  print('Odd numbers count = $count');
}
