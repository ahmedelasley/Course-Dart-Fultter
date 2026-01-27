/*
Exercise 8:
a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
b) Print book['title'], update price, and add a new key 'author'.
c) Print all keys, values, and check if 'pages' exists as a key.
*/
void main() {
  // Part a
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99,
  };

  // Part b
  print(book['title']);

  book['price'] = 24.50;
  book['author'] = 'Ahmed';

  // Part c
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}
