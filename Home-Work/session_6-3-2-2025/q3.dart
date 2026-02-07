/*
Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
set its initial values using a constructor. - Then change the age of the object and print the updated
details.
*/

void main() {
  var person = Person('Ahmed', 31);

  print('Before updating age:');
  person.printDetails();
  person.age = 32;
  print('After updating age:');
  person.printDetails();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printDetails() {
    print('Name: $name, Age: $age');
  }
}
