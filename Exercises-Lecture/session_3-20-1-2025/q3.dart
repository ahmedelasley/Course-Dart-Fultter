/*
Question 3
Exercise 3 — Safe Input Defaults (Null Safety)
Inside main():
1) Declare String? nickname = null;
2) Use ?? to produce a safe value: String displayName = nickname ?? "Guest";
3) Print displayName.
4) Call displayName.toUpperCase() and print.
*/

void main() {
  // Part 1
  String? nickname = null;

  // Part 2
  String displayName = nickname ?? "Guest";

  // Part 3
  print(displayName);

  // Part 4
  print(displayName.toLowerCase());
}
