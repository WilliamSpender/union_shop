import '../models/item_customisation_models.dart';

final ItemCustomisation shirtSizes = ItemCustomisation(defaultValueIndex: 1, name: 'Size', description: 'Shirt Size', options: [
  Customisation(value: 'Small'),
  Customisation(value: 'Medium'),
  Customisation(value: 'Large', extraCost: 1.0),
  Customisation(value: 'X-Large', extraCost: 2.0),
]);

final ItemCustomisation colours = ItemCustomisation(defaultValueIndex: 3, name: 'Colour', description: 'Clothing Size', options: [
  Customisation(value: 'Red'),
  Customisation(value: 'Green'),
  Customisation(value: 'Blue'),
  Customisation(value: 'White'),
  Customisation(value: 'Black'),
]);

final ItemCustomisation storageSize = ItemCustomisation(defaultValueIndex: 0, name: 'Storage Size', description: 'GBs of storage', options: [
  Customisation(value: '4GB'),
  Customisation(value: '8GB', extraCost: 2.0),
  Customisation(value: '16GB', extraCost: 5.0),
  Customisation(value: '2TB', extraCost: 120.0),//because why not
]);

final ItemCustomisation pen_c = ItemCustomisation(defaultValueIndex: 0, name: 'Pen', description: 'Still pen', options: [
  Customisation(value: 'Pen?'),
  Customisation(value: 'Pen!'),
]);