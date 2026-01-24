/*

Question 9 :
a) Create List<Map<String, dynamic>> products with two items, each has name and price
(double).
b) Print the first product's name using index and key access.
c) Calculate a num total as products[0]['price'] + products[1]['price'] and print it with
toStringAsFixed(2).

*/

void main() {
  // Part a
  List<Map<String, dynamic>> products = [
    {"name": "Computer", "price": 5750},
    {"name": "Mobile", "price": 3500},
  ];

  // Part b
  print(products[0]["name"]);

  // Part c
  num total = products[0]['price'] + products[1]['price'];
  print(total.toStringAsFixed(2));
}
