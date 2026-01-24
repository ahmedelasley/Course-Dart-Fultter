/*
Exercise 8 — Clean Username (Strings + Conditionals + Null Safety)
Inside main():
1) String? raw = " tharwat ";
2) If raw is not null, create String cleaned = raw!.trim(); then
- If cleaned.length >= 3, print OK:
- Else print Too short
3) If raw were null, produce a default (unknown) using ?? and print.
*/

void main() {
  // Part 1
  String? raw = " tharwat ";

  // Part 2
  if (raw != null) {
    // Part 3
    String cleaned = raw!.trim();

    if (cleaned.length >= 3) {
      print("OK");
    } else {
      print("Too short");
    }
  } else {
    print(raw ?? "unknown"); // Part 4
  }
}
