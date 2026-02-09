/*
Q7. Object Interaction - Create a class Account with attributes owner and balance. - Add methods
deposit(amount) and withdraw(amount). - In main(), create an account, deposit 500, withdraw 200,
and print the final balance.

*/

void main() {
  var account = Account("Ahmed", 0);

  account.deposit(500);
  account.withdraw(200);

  print("Owner ; ${account.owner}");
  print("Final Balance : ${account.balance}");
}

class Account {
  final String owner;
  double balance;

  Account(this.owner, this.balance);

  void deposit(double amount) {
    if (amount <= 0) return;
    balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= 0) return false;
    if (amount > balance) return true;
    balance -= amount;
    return true;
  }
}
