/*
Q3: Number Series Challenge
- Print numbers between 1 and 50 that are divisible by 7.
- Find the first number greater than 40 that is divisible by 5.
*/

void main() {
  // Part 1

  // first Solve
  for (int i = 0; i <= 50; i++) {
    if (i % 7 == 0) {
      print(i);
    }
  }

// Second Solve
  List<int> numbersDivBy7 = [];
  for (int number = 0; number <= 50; number++) {
    if (number % 7 == 0) {
      numbersDivBy7.add(number);
    }
  }
  print(numbersDivBy7);

  // Third Solve
  printNumbersDiv7(1, 50);

  // Part 2

  for (int i = 0; i <= 50; i++) {
    if (i > 40 && i % 5 == 0) {
      print(i);
      break;
    }
  }
}

void printNumbersDiv7(int start, int end) {
  List<int> numbersDivBy7 = [];
  for (int number = start; number <= end; number++) {
    if (number % 7 == 0) {
      numbersDivBy7.add(number);
    }
  }
  print('numbers between $start and $end Div By 7 :\n $numbersDivBy7');
}
