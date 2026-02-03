/*
Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.

*/

import 'dart:io';

void main() {
  stdout.write('Enter a word: ');
  String word = stdin.readLineSync()!.trim();

  String reversed = word.split('').reversed.join();

  Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
  String lower = word.toLowerCase();

  int vowelCount = 0;
  for (String ch in lower.split('')) {
    if (vowels.contains(ch)) {
      vowelCount++;
    }
  }

  print('Reversed: $reversed');
  print('Vowels count: $vowelCount');
}
