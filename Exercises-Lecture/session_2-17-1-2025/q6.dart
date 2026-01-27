/*

Question 6 :
a) Create List<String> fruits with three items.
b) Add a new fruit using add(), remove the second item using removeAt(1), and change the
first item by index.
c) Print fruits.first, fruits.last, and fruits.length

*/

void main() {
  // Part a
  List<String> fruits = ["Banana", "Orange", "Apple"];

  // Part b
  fruits.add("Watermelon"); // Add
  fruits.removeAt(1); // Remove
  fruits[0] = "Strawberry"; // Change

  // Part c
  print(fruits.first);
  print(fruits.last);
  print(fruits.length);
}
