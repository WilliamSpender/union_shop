import 'package:flutter/material.dart';
import 'package:union_shop/models/item_customisation_models.dart';
import 'package:union_shop/views/ui_constructors.dart';

import '../models/cart/cart_model.dart';
import '../models/item_model.dart';
import '../styles/text_themes.dart';

void routeToProductPage(BuildContext context, CartModel cart, Item item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductPage(cart: cart, item: item),
    ),
  );
}

class ProductPage extends StatefulWidget {
  final CartModel cart;
  final Item item;

  const ProductPage({super.key, required this.cart, required this.item});

  @override
  State<StatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // track selected customisations locally so we can supply a value to DropdownButton
  final Map<String, Customisation?> _selected = {};

  @override
  void initState() {
    super.initState();
    // initialize selections from defaults (and update cartItem if needed)
    for (final c in widget.item.customisationOptions) {
      _selected[c.name] = c.defaultValue;
    }
  }

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
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Product name
                Text(
                  widget.item.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 12),

                for (ItemCustomisation customisation
                in widget.item.customisationOptions)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: DropdownMenu(
                      label: Text(customisation.name),
                      textStyle: customisationStyle,
                      initialSelection: customisation.defaultValue,
                      dropdownMenuEntries: customisation.customisations,
                      onSelected: (Customisation? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selected[customisation.name] = newValue;
                          });
                        }
                      },
                    ),
                  ),

                const SizedBox(height: 12),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4d2963),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 12),
                // Product price
                Text(
                  widget.item.priceString,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4d2963),
                  ),
                ),

                const SizedBox(height: 24),

                // Product description
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  widget.item.description,
                  style: const TextStyle(
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