/*
Q8. Longest and Shortest Word - Ask the user to input a sentence. - Print the longest word and the
shortest word in the sentence. - Also print their lengths.
*/
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  var input = stdin.readLineSync() ?? '';

  var words = input
      .trim()
      .split(RegExp(r'\s+'))
      .where((word) => word.isNotEmpty)
      .toList();

  if (words.isEmpty) {
    print('No words found.');
    return;
  }

  String shortest = words.first;
  String longest = words.first;

  for (var word in words) {
    if (word.length < shortest.length) shortest = word;
    if (word.length > longest.length) longest = word;
  }

  print('Shortest word: "$shortest" (length: ${shortest.length})');
  print('Longest word: "$longest" (length: ${longest.length})');
}
