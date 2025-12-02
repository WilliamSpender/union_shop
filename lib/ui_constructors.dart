import 'package:flutter/material.dart';

Expanded generateMainHeader(
    BuildContext context,
    void Function(BuildContext) navigateToHome,
    void Function() placeholderCallbackForButtons,
    void Function(BuildContext) navigateToSignIn,
    void Function(BuildContext) navigateToCart,
    ){
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              navigateToHome(context);
            },
            child: Image.network(
              'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
              height: 18,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  width: 18,
                  height: 18,
                  child: const Center(
                    child: Icon(Icons.image_not_supported,
                        color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: placeholderCallbackForButtons,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.person_outline,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToSignIn(context),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToCart(context),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: placeholderCallbackForButtons,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}