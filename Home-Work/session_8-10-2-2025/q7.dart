/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/
import 'dart:io';

void main() {
  print('Enter integers separated by spaces:');
  final input = stdin.readLineSync() ?? '';
  final parts = input.trim().split(RegExp(r'\s+')).where((e) => e.isNotEmpty);

  final nums = <int>[];
  for (final p in parts) {
    final v = int.tryParse(p);
    if (v != null) nums.add(v);
  }

  if (nums.isEmpty) {
    print('No valid numbers.');
    return;
  }

  int maxVal = nums[0];
  int minVal = nums[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (final n in nums) {
    if (n > maxVal) maxVal = n;
    if (n < minVal) minVal = n;
    sum += n;

    if (n % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  final diff = maxVal - minVal;
  final avg = sum / nums.length;

  print('Largest: $maxVal');
  print('Smallest: $minVal');
  print('Difference: $diff');
  print('Average: $avg');

  print('Numbers above average:');
  for (final n in nums) {
    if (n > avg) print(n);
  }

  print('Even count: $evenCount');
  print('Odd count: $oddCount');
}
