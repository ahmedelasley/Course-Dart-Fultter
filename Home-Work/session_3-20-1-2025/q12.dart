/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
*/

void main() {
  Map<String, dynamic> contact = {
    'name': 'Ahmed',
    'phone': null,
  };

  dynamic phone = contact['phone'];

  if (phone == null) {
    print('No phone number ');
  } else {
    print("Phone: " + phone);
  }

  contact['phone'] = '0551234567';
  dynamic updatedPhone = contact['phone']!;

  print('Length: ${updatedPhone.length}');
}
