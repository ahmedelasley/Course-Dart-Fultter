/*

Question 3 :
a) Create String fullName with a space between first and last name.
b) Using the dot operator, print: fullName.length, fullName.toUpperCase(), and whether it
contains(" ").
c) Create String city with surrounding spaces (e.g., " Cairo ") and print city.trim().
*/

void main() {
  // Part a
  String fullName = "Ahmed Elsayed";

  // Part b
  print(fullName.length);
  print(fullName.toUpperCase());
  print(fullName.contains(" "));

  // Part c
  String city = '   Cairo   ';
  print(city.trim());
}
