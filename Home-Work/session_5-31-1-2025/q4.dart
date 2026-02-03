/*
Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
*/

import 'dart:io';

void main() {
  List<double> nums = <double>[];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Enter number $i: ');
    String input = stdin.readLineSync()!.trim();
    double value = double.parse(input);
    nums.add(value);
  }

  double minVal = nums[0];
  double maxVal = nums[0];

  for (double x in nums) {
    if (x < minVal) minVal = x;
    if (x > maxVal) maxVal = x;
  }

  double diff = maxVal - minVal;

  print('Smallest = $minVal');
  print('Largest  = $maxVal');
  print('Difference (largest - smallest) = $diff');
}
