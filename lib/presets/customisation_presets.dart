import '../models/item_customisation_models.dart';

final ItemCustomisation shirtSizes = ItemCustomisation(defaultValueIndex: 1, name: 'Size', description: 'Shirt Size', options: [
  Customisation(value: 'Small', extraCost: 0.0),
  Customisation(value: 'Medium', extraCost: 0.0),
  Customisation(value: 'Large', extraCost: 1.0),
  Customisation(value: 'X-Large', extraCost: 2.0),
]);

final ItemCustomisation colours = ItemCustomisation(defaultValueIndex: 1, name: 'Size', description: 'Shirt Size', options: [
  Customisation(value: 'Small', extraCost: 0.0),
  Customisation(value: 'Medium', extraCost: 0.0),
  Customisation(value: 'Large', extraCost: 0.0),
  Customisation(value: 'X-Large', extraCost: 0.0),
]);