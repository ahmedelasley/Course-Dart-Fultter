/*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/

void main() {
  List<String> list = ['a', 'b', 'b', 'c', 'a', 'd'];
  Set<String> uniqueSet = list.toSet();
  List<String> uniqueList = uniqueSet.toList();

  print('Original: $list (len=${list.length})');
  print('Unique  : $uniqueList (len=${uniqueList.length})');

  if (list.length > uniqueSet.length) {
    print('Duplicates removed ');
  } else {
    print('No duplicates found');
  }
}
