/*

Question 2 :
a) Declare: String name, int birthYear, double height, bool isStudent. Assign reasonable
values.
b) Using string interpolation, print one sentence describing all values.
c) Change height to a new value and print only the updated height.

*/

void main() {
  // Part a
  String name = "Ahmed Elsayed";
  int birthYear = 1993;
  double height = 1.88;
  bool isStudent = false;

  // Part b
  print(
      "My name is $name, I was born in $birthYear, my height is $height, student : $isStudent");

  //Part 3
  height = 1.83;
  print(height);
}
