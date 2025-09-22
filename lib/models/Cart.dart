import 'Product.dart';

class Cart {
  final Product product;
  int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

CalculateCartTotal(carts) {
  double total = 0;
  for (var cart in carts) {
    total += cart.product.price * cart.numOfItem;
  }

  String fixedPrice = total.toStringAsFixed(2);

  total = double.parse(fixedPrice);

  return total;
}

// Demo data for our cart

List<Cart> demoCarts = [
  /*Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),*/
];
