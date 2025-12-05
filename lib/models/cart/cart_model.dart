

import 'cart_item_model.dart';

class CartModel {
  final List<CartItemModel> items = [];
  double price = 0.0;


  void updateTotalPrice() {
    price = 0.0;
    for (var cartItem in items) {
      price += cartItem.price;
    }
  }

  void addItem(CartItemModel newItem){
    newItem.reCalculatePrice();
    price += newItem.price;
    items.add(newItem);
  }

  void removeItem(CartItemModel item){
    items.remove(CartItemModel);
    updateTotalPrice();
  }

}