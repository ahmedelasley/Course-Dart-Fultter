/*
Exercise 9:
a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.
*/
void main() {
  // Part a
  List<Map<String, dynamic>> students = [
    {'name': 'Ali', 'grade': 90},
    {'name': 'Sara', 'grade': 80},
  ];

  // Part b
  print(students[1]['grade']);

  // Part c
  int grade1 = students[0]['grade'];
  int grade2 = students[1]['grade'];
  double avg = (grade1 + grade2) / 2;

  print(avg);
}
