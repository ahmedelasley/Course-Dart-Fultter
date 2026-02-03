/*
Q8: Lottery Number Checker
- Generate a random list of 6 numbers between 1–50.
- Compare it with a ticket [5, 10, 15, 20, 25, 30] and print how many match.
*/
import 'dart:math';

void main() {
  List<int> ticket = [5, 10, 15, 20, 25, 30];

  List<int> randomNumbers = generateRandomUniqueNumbers(6, 1, 50);

  int matches = countMatches(ticket, randomNumbers);

  print('Random numbers: $randomNumbers');
  print('Ticket: $ticket');
  print('Matches: $matches');
}

List<int> generateRandomUniqueNumbers(int count, int min, int max) {
  Random rnd = Random();
  Set<int> set = {};

  while (set.length < count) {
    int n = min + rnd.nextInt(max - min + 1);
    set.add(n);
  }

  return set.toList();
}

int countMatches(List<int> ticket, List<int> randomNumbers) {
  int matches = 0;

  for (int i = 0; i < randomNumbers.length; i++) {
    if (ticket.contains(randomNumbers[i])) {
      matches++;
    }
  }

  return matches;
}

// List<int> generateRandomList(int count, int min, int max) {
//   Random rnd = Random();
//   List<int> list = [];

//   while (list.length < count) {
//     int n = min + rnd.nextInt(max - min + 1);

//     // avoid duplicates
//     if (!list.contains(n)) {
//       list.add(n);
//     }
//   }

//   return list;
// }
