/*
Question 4
Exercise 4 — Product Price Snapshot (Lists + Arithmetic)
Inside main():
1) Create List prices = [15.5, 9.99, 42.0];
2) Create double tax = 0.14;
3) Compute the total with tax for the first two items only and print.
4) Print whether the third item is more expensive than the first two average
*/

void main() {
  // Part 1
  List prices = [15.5, 9.99, 42.0];

  // Part 2
  double tax = 0.14;

  // Part 3
  print((prices[0] + prices[1]) * tax);

  // Part 4
  print(prices[2] > (prices[0] + prices[1]) / 2);
}
