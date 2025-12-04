

import 'cart_item_model.dart';

class Cart {
  final List<CartItem> items = [];

  double totalPrice() {
    double total = 0.0;
    for (var cartItem in items) {
      total += cartItem.price;
    }
    return total;
  }



}