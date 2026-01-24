/*
Question 1
Exercise 1 — Quick Setup Echo
Inside main():
1) Declare String editor = "VS Code" and String dartExt = "Dart".
2) Print a single line: Using VS Code with Dart extension installed. (concatenation only).
3) Print the current file name using a String manually. Also print its length using dot operator.
*/

void main() {
  // Part 1
  String editor = "VS Code";
  String dartExt = "Dart";

  // Part 2
  print("Using" + editor + " with " + dartExt + " extension installed.");

  // Part 3
  String fileName = "q1.dart";
  print("File : " + fileName);
  print("Length : " + fileName.length.toString());
}
