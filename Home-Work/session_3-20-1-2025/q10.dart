/*
Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'
*/

void main() {
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'UAE',
  };

  // Print the value for 'EG'
  print(countryCodes['EG']);

  // Add a new entry
  countryCodes['QA'] = 'Qatar';
  // Print the total length
  print(countryCodes.length);

  // Check if 'JO' exists
  if (!countryCodes.containsKey('JO')) {
    print('Jordan missing');
  }
}
