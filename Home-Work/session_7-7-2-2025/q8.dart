/*
Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.
*/
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  final s = stdin.readLineSync() ?? '';

  final analyzer = SentenceAnalyzer(s);
  final onceWords = analyzer.appearOnce();
  final unique = analyzer.uniqueCount();

  print('Words that appear only once:');
  for (final w in onceWords) {
    print('- $w');
  }

  print('Total unique words count: $unique');
}

class SentenceAnalyzer {
  final String sentence;

  SentenceAnalyzer(this.sentence);

  List<String> words() {
    // Normalize: lowercase + remove common punctuation
    final normalized = sentence.toLowerCase().replaceAll(RegExp(r"[^\w\s']"),
        ' '); // keep letters/digits/_ and spaces and apostrophe

    return normalized
        .split(RegExp(r'\s+'))
        .map((w) => w.trim())
        .where((w) => w.isNotEmpty)
        .toList();
  }

  Map<String, int> frequency() {
    final freq = <String, int>{};
    for (final w in words()) {
      freq[w] = (freq[w] ?? 0) + 1;
    }
    return freq;
  }

  List<String> appearOnce() {
    final freq = frequency();
    return freq.entries.where((e) => e.value == 1).map((e) => e.key).toList();
  }

  int uniqueCount() => frequency().length;
}
