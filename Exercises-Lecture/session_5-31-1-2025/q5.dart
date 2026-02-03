/*
Q5: ATM Simulation
- Start with balance 1000, then deposit 500 and withdraw 300.
- Print the final balance.
*/

void main() {
  int balance = 1000;
  int deposit = 500;
  int withdraw = 300;

  balance += deposit;
  balance -= withdraw;

  print("The Balance = $balance");
}
