/*
Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.
*/

void main() {
  var p1 = Product('Laptop', 3500);
  var p2 = Product('Pen'); // default price = 0
  print('Q4) Product 1:');
  p1.printDetails();
  print('Q4) Product 2:');
  p2.printDetails();
}

class Product {
  String name;
  double price = 0;

  Product(this.name, [this.price = 0]);

  void printDetails() {
    print('Product: $name, Price: $price');
  }
}
