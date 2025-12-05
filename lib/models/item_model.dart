
import 'item_customisation_models.dart';

class Item {
  final String name;
  final double price;
  final String description;
  final String imageLocation;
  final List<ItemCustomisation> customisationOptions;

  Item({
    required this.name,
    required this.price,
    required this.description,
    required this.imageLocation,
    required this.customisationOptions,
  });
}



final List<Item> sampleItems = [
  Item(
    name: "Classic T-Shirt",
    price: 19.99,
    description: "A timeless classic t-shirt made from 100% cotton.",
    imageLocation: "assets/images/classic_tshirt.png",
  ),
  Item(
    name: "Denim Jeans",
    price: 49.99,
    description: "Comfortable and stylish denim jeans for everyday wear.",
    imageLocation: "assets/images/denim_jeans.png",
  ),
  Item(
    name: "Sneakers",
    price: 69.99,
    description: "Trendy sneakers that combine comfort and style.",
    imageLocation: "assets/images/sneakers.png",
  ),
];