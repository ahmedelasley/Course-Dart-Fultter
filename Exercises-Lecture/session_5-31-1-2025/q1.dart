/*
Q1: Student Grades Analyzer
- Calculate the average grade from this list: [55, 72, 90, 45, 68, 100, 88, 73, 49].
- Create a new list with only grades above 80.
*/

void main() {
  // Part 1
  List<int> grades = [55, 72, 90, 45, 68, 100, 88, 73, 49];
  int sumGrades = 0;

  for (int grade in grades) {
    sumGrades += grade;
  }

  double averageGrades = sumGrades / grades.length;
  print("Average grades : $averageGrades");

  // Part 2
  List<int> gradesAbove80 = [];
  for (int grade in grades) {
    if (grade > 80) {
      gradesAbove80.add(grade);
    }
  }
}
