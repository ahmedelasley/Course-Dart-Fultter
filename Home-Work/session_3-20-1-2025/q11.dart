/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

void main() {
  double price = 320.0;
  bool isStudent = true;
  bool hasCoupon = false;

  double discountRate = 0.0;

  // nested if/else
  if (isStudent == true) {
    discountRate = 0.15; // 15% for students
    if (hasCoupon == true) {
      discountRate = 0.25; // 25% if student + coupon
    }
  } else {
    if (hasCoupon == true) {
      discountRate = 0.10; // 10% coupon
    } else if (price >= 500) {
      discountRate = 0.12; // 12% for high threshold
    } else if (price >= 300) {
      discountRate = 0.05; // 5% for mid threshold
    } else {
      discountRate = 0.0;
    }
  }

  double finalPrice = price * (1 - discountRate);
  print('Price: $price');
  print('Discount: ${(discountRate * 100).toStringAsFixed(0)}%');
  print('Final price: ${finalPrice.toStringAsFixed(2)}');
}
