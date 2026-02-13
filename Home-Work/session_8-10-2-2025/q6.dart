/*
Q6
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid

*/
bool isValidBrackets(String s) {
  final stack = <String>[];
  final pairs = {')': '(', '}': '{', ']': '['};

  for (final ch in s.split('')) {
    if (ch == '(' || ch == '{' || ch == '[') {
      stack.add(ch);
    } else if (pairs.containsKey(ch)) {
      if (stack.isEmpty || stack.removeLast() != pairs[ch]) return false;
    } else {
      // لو في رموز غير الأقواس (حسب السؤال غالبًا لا يوجد)
      return false;
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isValidBrackets("()")); // true
  print(isValidBrackets("()[]{}")); // true
  print(isValidBrackets("(]")); // false
  print(isValidBrackets("([)]")); // false
  print(isValidBrackets("{[]}")); // true
}
