/*
Exercise 7:
a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result.
*/
void main() {
  // Part a
  List<int> numbers = [4, 4, 5, 6, 6, 7];

  // Part b
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);

  // Part c
  bool added = uniqueNumbers.add(10);
  print('add(10) => $added, set => $uniqueNumbers');

  bool removed = uniqueNumbers.remove(4);
  print('remove(4) => $removed, set => $uniqueNumbers');

  bool has6 = uniqueNumbers.contains(6);
  print('contains(6) => $has6');
}
