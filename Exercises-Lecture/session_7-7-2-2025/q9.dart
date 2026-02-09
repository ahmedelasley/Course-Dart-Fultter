/*
Q9. Even, Odd, and Statistics - Ask the user to enter 10 numbers in a list. - Print how many are
even and how many are odd. - Calculate the total sum of all even numbers and all odd numbers
separately. - Finally, print which group (even or odd) has the larger sum.
*/
import 'dart:io';

void main() {
  var numbers = <int>[];

  print('Enter 10 numbers:');
  while (numbers.length < 10) {
    stdout.write('Number ${numbers.length + 1}: ');
    var line = stdin.readLineSync();
    var value = int.tryParse(line ?? '');
    if (value == null) {
      print('Invalid number, try again.');
      continue;
    }
    numbers.add(value);
  }

  int evenCount = 0;
  int oddCount = 0;
  int evenSum = 0;
  int oddSum = 0;

  for (int n in numbers) {
    if (n % 2 == 0) {
      evenCount++;
      evenSum += n;
    } else {
      oddCount++;
      oddSum += n;
    }
  }

  print('\nEven count: $evenCount');
  print('Odd count: $oddCount');
  print('Even sum: $evenSum');
  print('Odd sum: $oddSum');

  if (evenSum > oddSum) {
    print('Even group has the larger sum.');
  } else if (oddSum > evenSum) {
    print('Odd group has the larger sum.');
  } else {
    print('Both groups have equal sum.');
  }
}
