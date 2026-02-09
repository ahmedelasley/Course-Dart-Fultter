/*
Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary.
*/

void main() {
  final emp = Employee(name: 'Ahmed', salary: 8000);
  emp.giveRaise(1500);
  print(emp);
}

class Employee {
  final String name;
  int salary;

  Employee({required this.name, required this.salary});

  void giveRaise(int amount) {
    if (amount <= 0) return;
    salary += amount;
  }

  // @override
  String toString() => 'Employee: $name | Salary: $salary';
}
