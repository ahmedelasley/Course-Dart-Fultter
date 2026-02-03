/*
  Q2           : Grocery Price Calculator
- From this map: {"apple": 5, "banana": 3, "orange": 4, "mango": 10} add "grape": 7 and update
"banana" to 4.
- Given a shopping list ["apple", "apple", "mango"], calculate the total cost.
*/

void main() {
  // part 1

  Map<String, int> prices = {"apple": 5, "banana": 3, "orange": 4, "mango": 10};

  prices['grape'] = 7;
  prices['banana'] = 4;

  print('Grocery Prices : $prices');

// Part 2

  List<String> shoppingList = ["apple", "apple", "mango"];

  int totalCost = 0;
  for (String item in shoppingList) {
    totalCost += prices[item] ?? 0;
  }

  print('Total Cost : $totalCost');
}
