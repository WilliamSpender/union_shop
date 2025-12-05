
import 'package:union_shop/models/item_model.dart';

class Collection {
  final String title;
  final String description;
  final String bannerImageLocation;
  final List<Item> items;

  const Collection({
    required this.title,
    required this.description,
    required this.bannerImageLocation,
    required this.items,
  });

}