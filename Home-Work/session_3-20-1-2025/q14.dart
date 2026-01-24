/*
Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.

*/

void main() {
  // List<int>? scores = [];
  List<int>? scores = [10, 12, 25];

  if (scores == null || scores.isEmpty) {
    print('No scores');
    return;
  }

  num sum = scores.first + scores.last;
  print('Scores: $scores');
  print('Sum(first + last) = $sum');

  if (sum >= 40) {
    print('Sum >= 40');
  } else {
    print('Sum < 40');
  }
}
