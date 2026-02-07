/*
Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).
*/

import 'dart:io';

void main() {
  // Ask user to enter 6 numbers
  var numbers =
      readDoubleList(6, 'Enter 6 numbers (space or comma separated): ');

  // Find largest and second largest WITHOUT sorting
  double? largest;
  double? secondLargest;

  for (var x in numbers) {
    if (largest == null || x > largest) {
      secondLargest = largest;
      largest = x;
    } else if (x != largest && (secondLargest == null || x > secondLargest)) {
      secondLargest = x;
    }
  }

  print('Largest number: $largest');

  if (secondLargest == null) {
    print('Second largest number: Not found (all numbers may be equal).');
  } else {
    print('Second largest number: $secondLargest');
  }
}

List<double> readDoubleList(int count, String prompt) {
  while (true) {
    stdout.write(prompt);
    var input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Please enter values.');
      continue;
    }

    var parts = input
        .replaceAll(',', ' ')
        .split(RegExp(r'\s+'))
        .where((e) => e.trim().isNotEmpty)
        .toList();

    if (parts.length != count) {
      print('Please enter exactly $count numbers.');
      continue;
    }

    var nums = <double>[];
    bool ok = true;

    for (var p in parts) {
      var v = double.tryParse(p);
      if (v == null) {
        ok = false;
        break;
      }
      nums.add(v);
    }

    if (!ok) {
      print('Invalid input. Make sure all are numbers.');
      continue;
    }

    return nums;
  }
}
