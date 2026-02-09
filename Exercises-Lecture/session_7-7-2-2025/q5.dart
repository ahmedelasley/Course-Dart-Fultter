/*
Q5. Constructor with Default Value - Create a class Person with attributes name and age (default =
18). - Create one person by setting both values and another using only the name. - Print both
details.

*/

void main() {
  Person person1 = Person("Ahmed", age: 32);
  Person person2 = Person("Ali");

  print("Person 1\n \t Type : ${person1.name} \n \t Sound :${person1.age}");
  print("Person 2\n \t Type : ${person2.name} \n \t Sound :${person2.age}");
}

class Person {
  String name;
  int age;

  Person(this.name, {this.age = 18});
}
