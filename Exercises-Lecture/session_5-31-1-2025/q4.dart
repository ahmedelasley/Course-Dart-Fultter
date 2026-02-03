/*
Q4: Word Counter
- Given "Dart is fun and Dart is powerful", count how many times each word appears.
- Print the most frequent word.
*/

void main() {
  // Part 1
  String text = "Dart is fun and Dart is powerful";
  Map<String, int> wordsCount = {};
  List<String> words = text.split(' ');

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (wordsCount.containsKey(word)) {
      wordsCount[word] = wordsCount[word]! + 1;
    } else {
      wordsCount[word] = 1;
    }
  }
  print(wordsCount);

  // Part 2
  String mostWord = '';
  int mostCount = 0;

  for (String key in wordsCount.keys) {
    int count = wordsCount[key]!;
    if (count > mostCount) {
      mostCount = count;
      mostWord = key;
    }
  }

  print(mostWord);
}
