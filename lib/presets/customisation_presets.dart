import '../models/item_customisation_models.dart';

final ItemCustomisation shirtSizes = ItemCustomisation(defaultValueIndex: 1, name: 'Size', description: 'Shirt Size', options: [
  Customisation(value: 'Small'),
  Customisation(value: 'Medium'),
  Customisation(value: 'Large', extraCost: 1.0),
  Customisation(value: 'X-Large', extraCost: 2.0),
]);

final ItemCustomisation colours = ItemCustomisation(defaultValueIndex: 1, name: 'Colour', description: 'Clothing Size', options: [
  Customisation(value: 'Red'),
  Customisation(value: 'Green'),
  Customisation(value: 'Blue'),
  Customisation(value: 'White'),
]);