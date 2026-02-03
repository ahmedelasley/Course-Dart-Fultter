/*
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
*/

import 'dart:io';
import 'dart:math';

void main() {
  Random rng = Random();
  int secret = rng.nextInt(20) + 1;

  for (int attempt = 1; attempt <= 3; attempt++) {
    stdout.write('Guess ($attempt/3): ');
    String input = stdin.readLineSync()!.trim();
    int guess = int.parse(input);

    if (guess == secret) {
      print('Correct! 🎉');
      return;
    } else {
      print('Wrong!');
    }
  }

  print('You failed. The correct number was: $secret');
}
