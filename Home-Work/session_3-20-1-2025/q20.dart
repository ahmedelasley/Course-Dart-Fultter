/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
*/

void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'general'; // general or restricted

  if (age < 18 && !hasParent) {
    print('Access denied');
    area = 'restricted';
    // return;
  }

  switch (area) {
    case 'general':
      print('Welcome');
      break;

    case 'restricted':
      if (age >= 18) {
        print('Welcome');
      } else {
        print('Welcome with parent');
      }
      break;
  }
}
