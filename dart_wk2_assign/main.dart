// import 'dart:math';

void main() {
  List<double> prices = [15.99, 8.50, 25.00, 12.75, 9.99];

  // Filter out items below $10
  List<double> filteredPrices = prices.where((price) => price <= 10.0).toList();

  // Calculate regular price with 8% tax
  double regularTotal = calculateTotal(filteredPrices, taxRate: 0.08);
  print("Regular total with tax: \$${regularTotal.toStringAsFixed(2)}");

  // Apply a 20% discount to all items
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => price * 0.8);
  double discountedTotal = calculateTotal(discountedPrices, taxRate: 0.08);
  print("Discounted price: \$${discountedTotal.toStringAsFixed(2)}");

  // Calculate factorial discount based on number of items
  int itemCount = filteredPrices.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount) / 100;
  print("Factorial discount: ${factorialDiscount}%");

  // Apply factorial discount to the final price
  double finalPrice = discountedTotal * (1 - factorialDiscount);
  print("Final price after all discounts: \$${finalPrice.toStringAsFixed(2)}");
}

double calculateTotal(List<double> prices, {double taxRate = 0}) {
  return prices.fold(0.0, (sum, price) => sum + price) * (1 + taxRate);
}

List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

int calculateFactorialDiscount(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * calculateFactorialDiscount(n - 1);
  }
}