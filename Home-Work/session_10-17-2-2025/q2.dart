/*
2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.
*/
enum Category { pizza, drinks, dessert, burgers, other }

class FoodItem {
  final String name;
  final double price;
  final Category category;

  FoodItem({
    required this.name,
    required this.price,
    required this.category,
  });

  @override
  String toString() => '$name - ${price.toStringAsFixed(2)} (${category.name})';
}

class Menu {
  final List<FoodItem> _items = [];

  void addItem(FoodItem item) => _items.add(item);

  List<FoodItem> listItems() => List.unmodifiable(_items);

  List<FoodItem> itemsByCategory(Category category) {
    final result = <FoodItem>[];
    for (final item in _items) {
      if (item.category == category) result.add(item);
    }
    return result;
  }

  FoodItem? findByName(String name) {
    for (final item in _items) {
      if (item.name.toLowerCase() == name.toLowerCase()) return item;
    }
    return null;
  }
}

class OrderLine {
  final FoodItem item;
  int quantity;

  OrderLine({required this.item, this.quantity = 1});

  double get lineTotal => item.price * quantity;

  @override
  String toString() =>
      '${item.name} x$quantity = ${lineTotal.toStringAsFixed(2)}';
}

class Order {
  final List<OrderLine> _lines = [];

  void addItem(FoodItem item, {int qty = 1}) {
    if (qty <= 0) return;

    // لو العنصر موجود من قبل، زوّد الكمية بدل ما تعمل سطر جديد
    for (final line in _lines) {
      if (line.item.name.toLowerCase() == item.name.toLowerCase()) {
        line.quantity += qty;
        return;
      }
    }
    _lines.add(OrderLine(item: item, quantity: qty));
  }

  double get totalPrice {
    double total = 0;
    for (final line in _lines) {
      total += line.lineTotal;
    }
    return total;
  }

  List<OrderLine> get lines => List.unmodifiable(_lines);
}

void main() {
  final menu = Menu();
  menu.addItem(
      FoodItem(name: 'Margherita', price: 30, category: Category.pizza));
  menu.addItem(FoodItem(name: 'Cola', price: 8, category: Category.drinks));
  menu.addItem(
      FoodItem(name: 'Brownie', price: 15, category: Category.dessert));

  final order = Order();
  order.addItem(menu.findByName('Margherita')!, qty: 2);
  order.addItem(menu.findByName('Cola')!, qty: 3);
  order.addItem(menu.findByName('Brownie')!, qty: 1);

  print('--- Order Lines ---');
  for (final line in order.lines) {
    print(line);
  }
  print('Total = ${order.totalPrice.toStringAsFixed(2)}');
}
