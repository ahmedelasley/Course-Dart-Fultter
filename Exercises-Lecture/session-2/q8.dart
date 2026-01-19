/*

Question 8 :
a) Create a Map<String, dynamic> student like: {'name': 'Samy', 'age': 24, 'gpa': 3.5}.
b) Print student['name'], update student['gpa'], and add a new key 'city'.
c) Print student.keys, student.values, and whether it containsKey('age')

*/

void main() {
  // Part a
  Map<String, dynamic> student = {'name': 'Samy', 'age': 24, 'gpa': 3.5};

  // Part b
  print(student['name']);
  student['gpa'] = 3.7;
  student['city'] = "Cairo";

  // Part c
  print(student.keys);
  print(student.values);
  print(student.containsKey('age'));
}
