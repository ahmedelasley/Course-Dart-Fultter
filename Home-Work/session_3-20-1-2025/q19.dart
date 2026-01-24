/*
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/

void main() {
  List<String> names = ['Ali', 'Sara', 'Ali', 'Omar', 'Sara', 'Ali'];

  Set<String> uniqueNames = names.toSet();

  Map<String, int> counts = {};

  for (String name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }

  if (names.length > uniqueNames.length) {
    print('Duplicates exist');
  }

  String specificName = 'Ali';
  if ((counts[specificName] ?? 0) > 1) {
    print('$specificName appears more than once');
  }
}
