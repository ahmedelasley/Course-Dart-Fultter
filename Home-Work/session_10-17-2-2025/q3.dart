/*
3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.
*/

class UniqueVisitorCounter {
  int countUnique(List<int> visitorIds) {
    final unique = <int>{};
    for (final id in visitorIds) {
      unique.add(id);
    }
    return unique.length;
  }
}

void main() {
  final counter = UniqueVisitorCounter();

  final ids = [10, 10, 2, 3, 2, 7, 7, 7, 9];
  final uniqueCount = counter.countUnique(ids);

  print('Unique visitors today = $uniqueCount'); // 5
}
