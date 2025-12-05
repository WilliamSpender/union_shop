
import 'item_customisation_models.dart';

class Item {
  final String name;
  final double price;
  final String description;
  final String imageLocation;
  final List<ItemCustomisation> customisationOptions;

  String get priceString => '£${price.toStringAsFixed(2)}';

  Item({
    required this.name,
    required this.price,
    required this.description,
    required this.imageLocation,
    required this.customisationOptions,
  });
}