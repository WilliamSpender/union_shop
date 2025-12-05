import 'package:flutter/material.dart';
import 'package:union_shop/models/cart/cart_item_model.dart';
import 'package:union_shop/views/ui_constructors.dart';

import '../models/cart/cart_model.dart';

class CartPage extends StatefulWidget {
  final CartModel cart;

  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyContent = [];
    if (widget.cart.items.isEmpty) {
      bodyContent.add(Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
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
            ],
          ),
        ),
      ));
    } else {
      int index = 0;
      for (CartItemModel item in widget.cart.items) {
        int currentIndex = index;
        bodyContent.add(
          CartItemCard(
            cartItem: item,
            onRemove: () {
              widget.cart.removeItem(currentIndex);
              setState(() {});
            },
            onQuantityChanged: (int newQty) {
              setState(() {
                // update the cart item quantity locally; adapt if your model exposes a specific method
                item.quantity = newQty;
              });
            },
          ),
        );
        index++;
      }
    }
    return GenericPage(bodyContent: bodyContent);
  }
}

class CartItemCard extends StatefulWidget {
  final CartItemModel cartItem;
  final VoidCallback onRemove;
  final ValueChanged<int>? onQuantityChanged;

  const CartItemCard({
    super.key,
    required this.cartItem,
    required this.onRemove,
    this.onQuantityChanged,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  void initState() {
    super.initState();
  }

  void _modifyQuantity(int qty) {
    widget.cartItem.addCount(qty);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    CartItemModel item = widget.cartItem;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 350,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 98,
                      maxHeight: 98,
                    ),
                    child: Image.network(
                      item.item.imageLocation,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.image_not_supported,
                                color: Colors.grey),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.item.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () => _modifyQuantity(-1),
                            ),
                            Text('${item.quantity}',
                                style: const TextStyle(fontSize: 16)),
                            IconButton(
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: () => _modifyQuantity(1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: widget.onRemove,
                    tooltip: 'Remove item',
                  ),
                ],
              ),

              ...item.customisations.entries
                  .map((entry) => Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          '${entry.key}: ${entry.value.value}',
                          style: const TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ))
                  .toList(),

              const SizedBox(height: 6),
              Text('Total: ${widget.cartItem.priceString}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ]),
          )),
    );
  }
}
