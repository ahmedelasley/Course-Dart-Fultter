/*
Exercise 7 — Scope & Shadowing
Inside main():
1) Declare int points = 10;
2) Inside a block { ... }, declare another int points = 20; and print it.
3) After the block, print the outer points.
4) Add an if (points < 15) { String note = "Low"; print(note); } and try printing note outside (comment
out line).
*/

void main() {
  // Part 1
  int points = 10;

  // Part 2
  {
    int points = 20;
    print(points);
  }

  // Part 3
  print(points);

  // Part 4
  if (points < 15) {
    String note = "Low";
    print(note);
  }

  // print(note);
}
