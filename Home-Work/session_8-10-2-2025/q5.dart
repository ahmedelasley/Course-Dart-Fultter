/*
Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/
class Book {
  String _title = '';
  int _pages = 0;

  String get title => _title;

  set title(String value) {
    if (value.trim().isEmpty) {
      print('Invalid title');
      return;
    }
    _title = value.trim();
  }

  set pages(int value) {
    if (value <= 0) {
      print('Invalid pages');
      return;
    }
    _pages = value;
  }

  int get readingTime => _pages * 2; // minutes
}

void main() {
  final b = Book();
  b.title = 'Clean Code';
  b.pages = 300;

  print('Title: ${b.title}');
  print('Estimated reading time: ${b.readingTime} minutes');
}
