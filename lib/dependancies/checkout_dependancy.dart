

import 'package:flutter/material.dart';
import 'package:union_shop/models/cart/cart_item_model.dart';
import 'package:union_shop/models/cart/cart_model.dart';

void checkout(CartModel cart, BuildContext context) {

  String summary = "\n";
  for (CartItemModel item in cart.items) {
    summary = '$summary \n ${item.quantity}X ${item.item.name} ${item.customisations.entries
        .map((entry) =>
            '\n${entry.key}: ${entry.value.value}').toString()}';
  }
  try {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Purchased: $summary'
        )));
  } catch (_) {}

  cart.clear();
}
