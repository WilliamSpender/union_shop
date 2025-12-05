import 'package:flutter/material.dart';
import 'package:union_shop/presets/item_presets.dart';
import 'package:union_shop/views/about_us_page.dart';
import 'package:union_shop/views/authentication_screen.dart';
import 'package:union_shop/views/cart_page.dart';
import 'package:union_shop/views/collections_page.dart';
import 'package:union_shop/views/product_page.dart';
import 'package:union_shop/views/ui_constructors.dart';

import 'models/cart/cart_model.dart';
import 'models/item_model.dart';


void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatefulWidget {
  const UnionShopApp({super.key});

  @override
  State<UnionShopApp> createState() => _UnionShopAppState();
}

class _UnionShopAppState extends State<UnionShopApp> {
  final CartModel _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      home: HomeScreen(cart: _cart),
      // By default, the app starts at the '/' route, which is the HomeScreen
      initialRoute: '/',
      // When navigating to '/product', build and return the ProductPage
      // In your browser, try this link: http://localhost:49856/#/product
      routes: {
        '/about-us': (context) => const AboutUsPage(),
        '/search': (context) => const AboutUsPage(),//todo replace placeholders with actual pages
        '/cart': (context) => CartPage(cart: _cart),
        '/sign-in': (context) => const AuthPage(),
        '/collections': (context) => CollectionsPage(cart: _cart),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.cart});
  final CartModel cart;

  void navigateToProduct(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }

  @override
  Widget build(BuildContext context) {
    return GenericPage(bodyContent: [
            // Hero Section
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                  ),
                  // Content overlay
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'The Union Shop',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "All your essentials and Portsmouth themes wares in one place.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () => navigateToGeneric(context, '/collections'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4d2963),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text(
                            'BROWSE PRODUCTS',
                            style: TextStyle(fontSize: 14, letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Products Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: [
                        ProductCard(
                          item: uopHoodie,
                          func: (item) => routeToProductPage(context, cart, item),
                        ),
                        ProductCard(
                          item: portsmouthTShirt,
                          func: (item) => routeToProductPage(context, cart, item),
                        ),
                        ProductCard(
                          item: portsmouthCityMagnet,
                          func: (item) => routeToProductPage(context, cart, item),
                        ),
                        ProductCard(
                          item: portsmouthCityMagnet,
                          func: (item) => routeToProductPage(context, cart, item),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        );
  }
}

class ProductCard extends StatelessWidget {
  final Item item;
  final void Function(Item)? func;

  const ProductCard({
    super.key,
    required this.item,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        func?.call(item);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              item.imageLocation,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                item.name,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(height: 4),
              Text(
                item.priceString,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
