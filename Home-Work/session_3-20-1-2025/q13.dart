/*
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.

*/

void main() {
  double mark = 78;

  String grade;

  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  print('Mark: $mark => Grade: $grade');

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Very good');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Pass');
      break;
    default:
      print('Fail');
  }
}
