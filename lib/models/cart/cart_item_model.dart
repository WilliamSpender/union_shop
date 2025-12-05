

import 'package:union_shop/models/item_customisation_models.dart';

import '../item_model.dart';

class CartItemModel {
  final Item item;
  int quantity;
  double price = 0.0;
  late Map<String, Customisation> customisations;

  String get priceString => '£${price.toStringAsFixed(2)}';

  CartItemModel({
    required this.item,
    required this.quantity,
    required Map<String, Customisation> customisations,
  }){
    this.customisations = Map<String, Customisation>.from(customisations);// copy map to prevent cascading edits

    // Ensure all customisation options are present
    for(ItemCustomisation customisation in item.customisationOptions){
      customisations.putIfAbsent(customisation.name, () => customisation.defaultValue);
    }
    reCalculatePrice();
  }
  
  void reCalculatePrice(){
    price = item.price;
    customisations.forEach((key, value) {
      price += value.extraCost;
    });
    price = price * quantity;
  }

  void addCount(int quantity){
    setCount(this.quantity+quantity);
  }
  
  void setCount(int newQuantity){
    if(newQuantity < 0) return;
    quantity = newQuantity;
    reCalculatePrice();
  }

  void updateCustomisation(String customisationName, Customisation newCustomisation){
    customisations.update(customisationName, (value) => newCustomisation);
    reCalculatePrice();
  }
  
}