/*

242. Valid Anagram
Easy
Topics
premium lock icon
Companies
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 

Example
* 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

 

Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
 

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

*/
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  final count = List<int>.filled(26, 0);

  for (int i = 0; i < s.length; i++) {
    count[s.codeUnitAt(i) - 97]++; // 'a' = 97
    count[t.codeUnitAt(i) - 97]--;
  }

  for (final c in count) {
    if (c != 0) return false;
  }
  return true;
}

void main() {
  print(isAnagram("anagram", "nagaram")); // true
  print(isAnagram("rat", "car")); // false
}
