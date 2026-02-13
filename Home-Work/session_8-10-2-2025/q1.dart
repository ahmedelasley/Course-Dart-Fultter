/*
Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.
*/

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print('Invalid balance');
      return;
    }
    _balance = value;
  }
}

void main() {
  final acc = BankAccount();

  acc.balance = 500;
  print('Balance: ${acc.balance}'); // 500

  acc.balance = 250.75;
  print('Balance: ${acc.balance}'); // 250.75

  acc.balance = -10; // Invalid balance
  print('Balance: ${acc.balance}'); // stays 250.75
}
