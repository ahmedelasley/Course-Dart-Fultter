/*
Exercise 2:
a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/
void main() {
  // Part a
  String country = 'Egypt';
  int year = 1993;
  double weight = 95.5;
  bool likesCoding = true;

  // Part b
  print(
    'I live in $country, year: $year, weight: $weight kg, likesCoding: $likesCoding',
  );

  // Part c
  weight = 78.0;
  print('Updated weight: $weight');
}
