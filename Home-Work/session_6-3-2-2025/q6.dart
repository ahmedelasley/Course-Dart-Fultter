/*
Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
Then print the shortest word and the longest word from the sentence.
*/
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  var sentence = stdin.readLineSync() ?? '';

  // Split into words (ignore extra spaces)
  var words = sentence
      .trim()
      .split(RegExp(r'\s+'))
      // remove punctuation around words (simple cleanup)
      .map((w) => w.replaceAll(RegExp(r'^[^\w]+|[^\w]+$'), ''))
      .where((w) => w.isNotEmpty)
      .toList();

  // Word count
  print('Word count: ${words.length}');

  if (words.isEmpty) {
    print('Shortest word: -');
    print('Longest word: -');
    return;
  }

  // Find shortest and longest
  String shortest = words.first;
  String longest = words.first;

  for (var w in words) {
    if (w.length < shortest.length) shortest = w;
    if (w.length > longest.length) longest = w;
  }

  print('Shortest word: $shortest');
  print('Longest word: $longest');
}
