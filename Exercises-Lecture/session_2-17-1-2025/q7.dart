/*

Question 7 :
a) Start with List<int> nums = [1, 2, 2, 3, 3, 3].
b) Convert it to a Set<int> to remove duplicates and print the set.
c) Use add(), remove(), and contains() on the set, printing after each step.

*/

void main() {
  // Part a
  List<int> nums = [1, 2, 2, 3, 3, 3];

  // Part b
  Set<int> uniqueNums = nums.toSet();
  print(uniqueNums);

  // Part c
  uniqueNums.add(4);
  print(uniqueNums);

  uniqueNums.remove(3);
  print(uniqueNums);

  print(uniqueNums.contains(2));
}
