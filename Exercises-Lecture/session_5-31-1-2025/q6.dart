/*
Q6: Prime Numbers Finder
- Write a function isPrime(int n) that checks if a number is prime.
- Use it to print all prime numbers between 1 and 50.
*/

void main() {
  PrintPrimes(1, 50);
}

void PrintPrimes(int start, int end) {
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) print(number);
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}
