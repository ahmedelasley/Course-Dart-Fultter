/*
Q6
Create a program that calculates the factorial of 6 and prints the result.
*/
void main() {
  int n = 6;
  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  print(factorial); // 720
}
