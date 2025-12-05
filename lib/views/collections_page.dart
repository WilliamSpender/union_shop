import 'package:flutter/material.dart';
import 'package:union_shop/models/collection_model.dart';
import 'package:union_shop/presets/collection_presets.dart';

import 'package:union_shop/views/ui_constructors.dart';

import '../models/cart/cart_model.dart';

class CollectionsPage extends StatelessWidget {
  final CartModel cart;

  const CollectionsPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return GenericPage(bodyContent: [

      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const Text(
                'Collections',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 48),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount:
                MediaQuery.of(context).size.width > 600 ? 3 : 2,
                crossAxisSpacing: 24,
                mainAxisSpacing: 48,
                children: allCollections
                    .map((collection) => CollectionsCard(collection: collection)).toList(),

              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class CollectionsCard extends StatelessWidget {
  final Collection collection;

  const CollectionsCard({
    super.key,
    required this.collection,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to collection page
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: 400,
            height: 400,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          collection.bannerImageLocation,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  top: 150,
                  child: Text(
                    collection.title,
                    textAlign: TextAlign.center,
                    softWrap: false,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
