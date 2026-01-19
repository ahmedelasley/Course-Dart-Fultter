/*
Exercise 6:
a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length
*/
void main() {
  // Part a
  List<String> animals = ['cat', 'dog', 'lion'];

  // Part b
  animals.add('tiger'); // add new animal
  animals.removeLast(); // remove last one
  animals[1] = 'wolf'; // update second element

  // Part c
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
