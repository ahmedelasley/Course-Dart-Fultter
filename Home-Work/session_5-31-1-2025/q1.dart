/*
Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  String input1 = stdin.readLineSync()!.trim();
  double a = double.parse(input1);

  stdout.write('Enter second number: ');
  String input2 = stdin.readLineSync()!.trim();
  double b = double.parse(input2);

  stdout.write('Enter third number: ');
  String input3 = stdin.readLineSync()!.trim();
  double c = double.parse(input3);

  double sum = a + b + c;
  double avg = sum / 3;

  print('Sum = $sum');
  print('Average = $avg');

  String message;
  if (avg > 50) {
    message = 'Average is greater than 50';
  } else {
    message = 'Average is NOT greater than 50';
  }

  print(message);
}
