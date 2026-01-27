/*
Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once.
*/
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> counts = {};

  for (final name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }

  counts.forEach((name, count) {
    if (count > 1) {
      print(name);
    }
  });
}
