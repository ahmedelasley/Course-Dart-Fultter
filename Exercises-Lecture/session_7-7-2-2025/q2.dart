/*
Q2. Class with Method - Create a class Student with attributes name and marks. - Add a method
hasPassed() that returns true if marks >= 50, otherwise false. - In main(), create a student object
and print whether they passed.
*/

void main() {
  Student student = Student("Ahmed", 60.5);
  print("Name : ${student.name}");
  print("Marks : ${student.marks}");
  print("Passed : ${student.hasPassed() ? 'Yes' : 'No'}");
}

class Student {
  String name;
  double marks;

  Student(this.name, this.marks);

  bool hasPassed() => marks >= 50;
}
