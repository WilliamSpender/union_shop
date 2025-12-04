

import 'package:union_shop/models/item_model.dart';

class CartItem {
  final Item item;
  int quantity;
  CartItem({required this.item, this.quantity = 1});


  double get price => (item.price * quantity);
}