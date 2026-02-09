/*
Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/

import 'dart:io';

void main() {
  stdout.write('Enter a number (e.g., 9875): ');
  final input = stdin.readLineSync();

  final n = int.tryParse((input ?? '').trim());
  if (n == null) {
    print('Invalid number.');
    return;
  }

  final summer = DigitSummer(n);
  final result = summer.reduceToSingleDigit();
  print('Final single-digit result: $result');
}

class DigitSummer {
  final int number;

  DigitSummer(this.number);

  int reduceToSingleDigit() {
    int n = number.abs();

    while (n >= 10) {
      int sum = 0;
      while (n > 0) {
        sum += n % 10;
        n ~/= 10;
      }
      n = sum;
    }

    return n;
  }
}
