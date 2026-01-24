/*
Question 2
Exercise 2 — Types & Casting Check
Inside main():
1) Declare int age = 24; double height = 1.78; num score = 95;
2) Convert age to String and concatenate with " years"; print it.
3) Add age + height and assign to num total. Print total.
4) Use comparison operators to print whether score >= 90 AND height > 1.7.
*/

void main() {
  // Part 1
  int age = 24;
  double height = 1.78;
  num score = 95;

  // Part 2
  print(age.toString() + " years");

  // Part 3
  num total = age + height;
  print("Total = $total");

  // Part 4
  print(score >= 90 && height > 1.7);
}
