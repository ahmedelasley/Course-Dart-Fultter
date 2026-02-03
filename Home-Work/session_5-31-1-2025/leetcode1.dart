/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

 

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
 

Constraints:

1 <= s.length <= 2 * 105
s consists only of printable ASCII characters.
*/

void main() {
  // ====== Example inputs (غيّرها واختبر) ======
  String s1 = "A man, a plan, a canal: Panama";
  String s2 = "race a car";
  String s3 = " ";

  print("s1 => ${isPalindrome(s1)}"); // true
  print("s2 => ${isPalindrome(s2)}"); // false
  print("s3 => ${isPalindrome(s3)}"); // true
}

// ====== Palindrome Function ======
bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    int leftCode = s.codeUnitAt(left);
    int rightCode = s.codeUnitAt(right);

    if (!isAlphaNumeric(leftCode)) {
      left++;
      continue;
    }

    if (!isAlphaNumeric(rightCode)) {
      right--;
      continue;
    }

    int lc = toLowerAscii(leftCode);
    int rc = toLowerAscii(rightCode);

    if (lc != rc) {
      return false;
    }

    left++;
    right--;
  }

  return true;
}

// ====== Helpers ======
bool isAlphaNumeric(int code) {
  // '0'..'9'
  if (code >= 48 && code <= 57) return true;

  // 'A'..'Z'
  if (code >= 65 && code <= 90) return true;

  // 'a'..'z'
  if (code >= 97 && code <= 122) return true;

  return false;
}

int toLowerAscii(int code) {
  // 'A'..'Z' => 'a'..'z'
  if (code >= 65 && code <= 90) return code + 32;
  return code;
}
