/*
Q6. Missing Number in a Sequence - Ask the user to enter 5 numbers in a list (numbers between 1
and 10). - Check if there is any number missing from the sequence 1–10, and print the missing
ones.
*/
import 'dart:io';

void main() {
  print("Enter 5 numbers (each between 1 and 10).");
  List<int> numbers = [];

  while (numbers.length < 5) {
    stdout.write("Enter number ${numbers.length + 1}: ");
    String? input = stdin.readLineSync();

    if (input == null) {
      print("Invalid input. Try again.");
      continue;
    }

    int? n = int.tryParse(input.trim());
    if (n == null) {
      print("Please enter a valid integer.");
      continue;
    }

    if (n < 1 || n > 10) {
      print("Number must be between 1 and 10.");
      continue;
    }

    numbers.add(n);
  }

  // Find missing numbers from 1..10 that are NOT in the entered list
  List<int> missing = [];
  for (int i = 1; i <= 10; i++) {
    if (!numbers.contains(i)) {
      missing.add(i);
    }
  }

  print("You entered: $numbers");
  if (missing.isEmpty) {
    print("No numbers are missing from 1–10.");
  } else {
    print("Missing numbers from 1–10: $missing");
  }
}
