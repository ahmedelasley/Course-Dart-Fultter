/*
Q1. Class with Constructor & Print - Create a class Animal with attributes type and sound. - Add a
constructor to set the values. - In main(), create two animals (e.g., Dog, Cat) and print their sounds.
*/

void main() {
  var dog = Animal("Dog", "Dog Sound");
  var cat = Animal("Cat", "Cat Sound");

  print("Animal 1\n \t Type : ${dog.type} \n \t Sound :${dog.sound}");
  print("Animal 2\n \t Type : ${cat.type} \n \t Sound :${cat.sound}");
}

class Animal {
  String type;
  String sound;

  Animal(this.type, this.sound);
}
