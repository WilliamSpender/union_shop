import 'package:flutter/material.dart';

import 'ui_constructors.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

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
                children: const [
                  CollectionsCard(
                    title: 'Placeholder Product 1',
                    imageUrl:
                    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  CollectionsCard(
                    title: 'Placeholder Product 2',
                    imageUrl:
                    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  CollectionsCard(
                    title: 'Placeholder Product 3',
                    imageUrl:
                    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                  CollectionsCard(
                    title: 'Placeholder Product 4',
                    imageUrl:
                    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class CollectionsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CollectionsCard({
    super.key,
    required this.title,
    required this.imageUrl,
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
                          imageUrl,
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
                    title,
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
