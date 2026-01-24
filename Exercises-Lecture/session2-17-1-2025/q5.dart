/*

Question 5 :
a) Declare two numbers x and y.
b) Print the results of comparison operators: x == y, x != y, x > y, x < y, x >= y, x <= y.
c) Create another number z and print whether z is equal to x + y using ==.

*/

void main() {
  // Part a
  num x = 7;
  num y = 5;

  // Part b
  print(x == y);
  print(x != y);
  print(x > y);
  print(x < y);
  print(x >= y);
  print(x <= y);

  // Part c
  num z = 15;
  print(z == (x + y));
  print(z == x + y);
}
