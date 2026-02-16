/*
Q3
Create a class Person with private fields _firstName and _lastName.- Add setters for both fields that reject empty strings (print 'Invalid name' if empty).- Add getters for both fields.- Add a computed getter fullName that returns 'firstName lastName'.- In main(), demonstrate:
1. Creating a person with valid names and printing fullName.
2. Trying to set an empty string for firstName or lastName (should print 'Invalid name').
*/
void main() {
  var p = Person('Ahmed', 'El-Asley');
  print(p.fullName);

  p.firstName = '';
  p.lastName = '   ';
}

class Person {
  String _firstName;
  String _lastName;

  Person(this._firstName, this._lastName);

  set firstName(String value) {
    if (value.trim().isEmpty) {
      print('Invalid name');
    } else {
      _firstName = value;
    }
  }

  set lastName(String value) {
    if (value.trim().isEmpty) {
      print('Invalid name');
    } else {
      _lastName = value;
    }
  }

  String get firstName => _firstName;
  String get lastName => _lastName;

  String get fullName => '$_firstName $_lastName';
}
