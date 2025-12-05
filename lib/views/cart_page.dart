import 'package:flutter/material.dart';

import 'package:union_shop/views/ui_constructors.dart';

import '../models/cart/cart_model.dart';

class CartPage extends StatelessWidget {
  final CartModel cart;

  const CartPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return GenericPage(bodyContent: [

    ]);
  }
}