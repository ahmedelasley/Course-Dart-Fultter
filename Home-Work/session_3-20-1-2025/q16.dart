/*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/

void main() {
  int num1 = 10, num2 = 7, num3 = 0;
  bool expr1, expr2, expr3;

  expr1 = num1 > num2; // true
  expr2 = (num2 > 0 && num3 == 0); // true
  expr3 = (num1 + num2 >= 20 || num3 > 1); // false

  print('expr1 (num1 > num2) = $expr1');
  print('expr2 (num2>0 && num3==0) = $expr2');
  print('expr3 (num1+num2>=20 || num3>1) = $expr3');

  if (expr1 && expr2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
