/*
Q4
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Valid
*/
void main() {
  print(isValid('()')); // true
  print(isValid('()[]{}')); // true
  print(isValid('(]')); // false
  print(isValid('([)]')); // false
  print(isValid('{[]}')); // true
}

bool isValid(String s) {
  var stack = <String>[];
  var closeToOpen = {
    ')': '(',
    ']': '[',
    '}': '{',
  };

  for (var ch in s.split('')) {
    if (ch == '(' || ch == '[' || ch == '{') {
      stack.add(ch);
    } else if (closeToOpen.containsKey(ch)) {
      if (stack.isEmpty) return false;
      var top = stack.removeLast();
      if (top != closeToOpen[ch]) return false;
    } else {
      return false;
    }
  }

  return stack.isEmpty;
}
