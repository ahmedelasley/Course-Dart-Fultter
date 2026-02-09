/*
Q4. Update Attribute with a Method - Create a class Book with attributes title and pages. - Add a
method addPages(int extraPages) that increases the pages. - In main(), create a book and use the
method to update its pages, then print the result.
*/

void main() {
  Book book = Book("Clean Code", 350);

  book.addPages(50);

  print("Title : ${book.title}");
  print("Pages : ${book.pages}");
}

class Book {
  String title;
  int pages;

  Book(this.title, this.pages);

  void addPages(int extraPages) {
    if (extraPages <= 0) return;
    pages += extraPages;
  }
}
