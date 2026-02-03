/*
Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces).
*/

import 'dart:io';

void main() {
  stdout.write('Enter a short sentence: ');
  String sentence = stdin.readLineSync() ?? '';

  String trimmed = sentence.trim();

  List<String> words;
  if (trimmed.isEmpty) {
    words = <String>[];
  } else {
    words = trimmed.split(RegExp(r'\s+'));
  }

  int charCount = 0;
  for (String ch in sentence.split('')) {
    if (ch != ' ') charCount++;
  }

  print('Words count = ${words.length}');
  print('Characters (excluding spaces) = $charCount');
}
