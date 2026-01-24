/*
Question 6
Exercise 6 — User Role Switch (switch/case)
Inside main():
1) String role = "admin";
2) Use switch(role) with cases guest, member, admin, default.
3) For admin, print Full access and Can manage users.
4) For guest print Read-only, for member print Standard access, otherwise Unknown role.
*/

void main() {
  // Part 1
  String role = "admin";

  // Part 2
  switch (role) {
    case "guest":
      print("Read-only"); // Part 4
      break;
    case "member":
      print("Standard access"); // Part 4
      break;
    case "admin":
      print("Full access and Can manage users"); // Part 3
      break;
    default:
      print("Unknown role"); // Part 4
  }
}
