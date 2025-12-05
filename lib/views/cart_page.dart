import 'package:flutter/material.dart';
import 'package:union_shop/views/ui_constructors.dart';

import '../models/cart/cart_model.dart';

class CartPage extends StatelessWidget {
  final CartModel cart;

  const CartPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyContent = [];
    if (cart.items.isEmpty) {
      bodyContent.add(
          Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(height: 92),
              const Text(
                'Your Cart',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Your cart is currently empty.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => navigateToHome(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4d2963),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue Shopping',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 228),
            ],
          ),
        ),
      ));
    } else {}
    return GenericPage(bodyContent: bodyContent);
  }
}
