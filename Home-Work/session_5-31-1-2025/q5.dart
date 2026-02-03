/*
Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
10, then calculate the sum of all results.

*/

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String input = stdin.readLineSync()!.trim();
  int n = int.parse(input);

  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print('$n x $i = $result');
    sum += result;
  }

  print('Sum of results = $sum');
}
