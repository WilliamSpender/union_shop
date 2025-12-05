

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

final Item classyCap = Item(
  name: "Classy Cap",
  price: 12.00,
  description:
  """Bringing to you, our Classic Caps. Available in 5 different colours.""",
  imageLocation: "https://shop.upsu.net/cdn/shop/products/Cap-Purple_1024x1024@2x.jpg?v=1742201981",
  customisationOptions: [
    colours
  ],
);

final Item pin = Item(
  name: "Lapel Pin",
  price: 3.00,
  description:
  """Our best selling University pin badges. A 22mm cut-to-shape hard enamel pin with a satin nickel finish secured in place by a clutch pin, perfectly presented in a UoP branded presentation box. 
A sophisticated gift for yourself or someone else. """,
  imageLocation: "https://shop.upsu.net/cdn/shop/files/lapelpins_1024x1024@2x.webp?v=1704879504",
  customisationOptions: [
  ],
);

final Item usbDrive = Item(
  name: "USB Drive",
  price: 5.50,
  description:
  """ Keep everything you need access to in one place""",
  imageLocation: "https://shop.upsu.net/cdn/shop/files/lapelpins_1024x1024@2x.webp?v=1704879504",
  customisationOptions: [
    storageSize
  ],
);

final Item pen = Item(
  name: "Pen",
  price: 1.00,
  description:
  """It pen!""",
  imageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_3454_b13bdf10-3a11-42d0-90ea-55cdd9314f48_360x.jpg?v=1648635743",
  customisationOptions: [
    pen_c
  ],
);

final Item lanyard = Item(
  name: "Lanyards",
  price: 1.00,
  description:
  """Keep your ID or keys close""",
  imageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_0645_360x.jpg?v=1557218961",
  customisationOptions: [
  ],
);

final Item coffeeCup = Item(
  name: "Coffee Cup",
  price: 6.50,
  description:
  """Need I say more?""",
  imageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_0667_360x.jpg?v=1557218882",
  customisationOptions: [
  ],
);