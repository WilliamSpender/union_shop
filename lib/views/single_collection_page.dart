import 'package:flutter/material.dart';
import 'package:union_shop/models/collection_model.dart';
import 'package:union_shop/presets/collection_presets.dart';
import 'package:union_shop/views/product_page.dart';

import 'package:union_shop/views/ui_constructors.dart';

import '../main.dart';
import '../models/cart/cart_model.dart';


void routeToCollectionPage(BuildContext context, CartModel cart, Collection collection) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ACollectionPage(cart: cart, collection: collection),
    ),
  );
}

class ACollectionPage extends StatelessWidget {
  final CartModel cart;
  final Collection collection;

  const ACollectionPage({super.key, required this.cart, required this.collection});

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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      collection.bannerImageLocation
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
                  Text(
                    collection.title,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    collection.description,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32)
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
              const SizedBox(height: 48),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount:
                MediaQuery.of(context).size.width > 600 ? 2 : 1,
                crossAxisSpacing: 24,
                mainAxisSpacing: 48,
                children:
                  collection.items.map((item) =>
                      ProductCard(item: item, func: (item) => routeToProductPage(context, cart, item))
                  ).toList(),

              ),
            ],
          ),
        ),
      ),

    ],
    );
  }
}


