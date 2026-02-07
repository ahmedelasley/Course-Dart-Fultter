/*
Q4. Multiple Objects - Create a class Book with attributes title and author. - Create two objects from
the Book class and print a message for each one.
*/

void main() {
  var book1 = Book("Clean Code", "Robert");
  var book2 = Book("Dart of Fundamental", "Ahmed");

  print("Book 1 \n Title : ${book1.title} \n Author : ${book1.author}");
  print("Book 2 \n Title : ${book2.title} \n Author : ${book2.author}");
}

class Book {
  String title;
  String author;

  Book(this.title, this.author);
}
