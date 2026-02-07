/*
Q5. Objects & Access Attributes - Create a class Person with attributes firstName and lastName. -
Create an object from the class, assign values to its attributes, and print them.

*/

void main() {
  var person = Person("Ahmed", "Elasley");

  print(
      "Person \n First Name : ${person.firstName} \n Last Name : ${person.lastName}");
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
}
