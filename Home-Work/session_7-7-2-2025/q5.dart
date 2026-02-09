/*
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.
*/

void main() {
  final c1 = Course(title: 'Flutter Basics', durationMonths: 6);
  final c2 = Course(title: 'Dart Fundamentals'); // default 3

  print(c1);
  print(c2);
}

class Course {
  final String title;
  final int durationMonths;

  Course({required this.title, this.durationMonths = 3});

  // @override
  String toString() => 'Course: $title | Duration: $durationMonths months';
}
