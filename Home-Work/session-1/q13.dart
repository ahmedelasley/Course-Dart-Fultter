/*
Question 13
What will be the output of this code snippet? Explain your answer: ```dart void
main() { int x = 5; int y = x + 2 * 3; print(y); } ```

Answer

The output will be: 11
Why:
In Dart, multiplication (*) has higher precedence than addition (+).
So 2 * 3 = 6 first, then x + 6 = 5 + 6 = 11.
*/
void main() {
  int x = 5;
  int y = x + 2 * 3; // 2*3=6 then 5+6=11
  print(y); // 11
}
