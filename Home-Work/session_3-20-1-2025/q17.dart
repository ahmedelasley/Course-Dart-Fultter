/*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/

void main() {
  double price = 23.5;
  String currency = 'SAR';

  dynamic tag = '$currency ${price.toStringAsFixed(2)}';
  dynamic padded = tag.padLeft(15, ' ');

  print('Tag: "$tag"');
  print('Tag length: ${tag.length}');
  print('Padded: "$padded"');
  print('Padded length: ${padded.length}');

  if (padded.length > tag.length) {
    print('Padding added');
  }
}
