import 'package:flutter/material.dart';

import 'ui_constructors.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(bodyContent: [
      // Product details
      Container(
      width: double.infinity,
      color: Colors.grey[50],
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Wrap(
          spacing: 40,
          alignment: WrapAlignment.start,
          children: [
            // Product image
        ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image_not_supported,
                              size: 64,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Image unavailable',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )),

            // Product info and Purchase options
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Product name
                Text(
                  'Placeholder Product Name',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 12),

                DropdownMenu(
                  label: const Text('Size'),
                  textStyle: TextStyle(fontSize: 14),
                  initialSelection: 'Medium',
                  dropdownMenuEntries: sizes,
                ),

                SizedBox(height: 12),


                SizedBox(height: 12),
                // Product price
                Text(
                  '£15.00',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4d2963),
                  ),
                ),

                SizedBox(height: 24),

                // Product description
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'This is a placeholder description for the product. Students should replace this with real product information and implement proper data management.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ],
            )),


          ],
        ),
      ),
    )
    ]);
  }
}

const List<DropdownMenuEntry<String>> sizes = [
  DropdownMenuEntry(value: 'Small', label: 'Small'),
  DropdownMenuEntry(value: 'Medium', label: 'Medium'),
  DropdownMenuEntry(value: 'Large', label: 'Large'),
];