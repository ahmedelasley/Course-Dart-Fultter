/*
Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/
class Grade {
  int _score = 0;

  int get score => _score;

  set score(int value) {
    if (value < 0 || value > 100) {
      print('Invalid score');
      return;
    }
    _score = value;
  }

  bool get isPass => _score >= 50;
}

void main() {
  final g = Grade();

  g.score = 40;
  print('Score: ${g.score}, Pass: ${g.isPass}');

  g.score = 55;
  print('Score: ${g.score}, Pass: ${g.isPass}');

  g.score = 120; // Invalid score
  print('Score: ${g.score}, Pass: ${g.isPass}');
}
