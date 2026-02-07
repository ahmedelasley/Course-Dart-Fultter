/*
Q7. Word Puzzle - Ask the user for a word. - If the word contains more than 5 characters, print it
reversed. - If it has 5 or fewer characters, print the word twice in a row (e.g., 'cat' → 'catcat')
*/

import 'dart:io';

void main() {
  print("Enter a word:");
  stdout.write("Word: ");
  String? wordInput = stdin.readLineSync();

  String word = (wordInput ?? "").trim();

  if (word.length == 0) {
    print("You didn't enter a word.");
  } else if (word.length > 5) {
    String reversed = word.split('').reversed.join();
    print("Reversed: $reversed");
  } else {
    print("Result: ${word}${word}");
  }
}
