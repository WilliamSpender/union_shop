

import '../models/item_model.dart';
import 'customisation_presets.dart';

final Item uopHoodie = Item(
  name: "UOP Hoodie",
  price: 35.00,
  description: "A comfy UOP branded hoodie",
  imageLocation: "https://shop.upsu.net/cdn/shop/files/Ivory_Hoodie_1024x1024@2x.png?v=1745583522",
  customisationOptions: [
    shirtSizes,
    colours
    ],
);


final Item portsmouthTShirt = Item(
  name: "Portsmouth TShirt",
  price: 18.00,
  description: "Essential T-Shirt",
  imageLocation: "https://shop.upsu.net/cdn/shop/files/Sage_T-shirt_1024x1024@2x.png?v=1759827236",
  customisationOptions: [
    shirtSizes,
    colours
  ],
);

final Item portsmouthCityMagnet = Item(
  name: "Portsmouth City Magnet",
  price: 4.50,
  description:
  """
  Bring a bit of Portsmouth pride to your fridge, locker, or pinboard with our eye-catching Portsmouth City Magnet, featuring the artwork of renowned illustrator Julia Gash.

  Part of our Portsmouth City Collection, this magnet showcases Julia’s iconic hand-drawn design, celebrating the city’s most loved landmarks and seaside charm in her signature playful style.

Made from durable tin plate, it's both lightweight and long-lasting - a perfect souvenir or small gift with a big personality.
""",
  imageLocation: "https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282",
  customisationOptions: [
  ],
);