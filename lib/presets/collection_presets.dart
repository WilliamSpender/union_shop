
import 'package:union_shop/models/collection_model.dart';
import 'package:union_shop/presets/item_presets.dart';

Collection clothing = Collection(
  title: "Clothing",
  description: "Stylish and comfortable clothing for all occasions.",
  bannerImageLocation: "https://shop.upsu.net/cdn/shop/files/PurpleHoodieFinal_540x.jpg?v=1742201957",
  items: [
    uopHoodie,
    portsmouthTShirt,
    classyCap,
  ],
);

Collection merchandise = Collection(
  title: "Merchandise",
  description: "Cool Stuff",
  bannerImageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_0645_360x.jpg?v=1557218961",
  items: [
    portsmouthCityMagnet,
    usbDrive,
    pen,
    pin,
    lanyard,
    coffeeCup,
  ],
);

Collection popular = Collection(
  title: "Popular",
  description: "Student's frequently bought items.",
  bannerImageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_0667_360x.jpg?v=1557218882",
  items: [
    uopHoodie,
    coffeeCup,
    classyCap,
  ],
);

Collection onSale = Collection(
  title: "SALE",
  description: "Get it while it's cheap!",
  bannerImageLocation: "https://shop.upsu.net/cdn/shop/products/IMG_0718_360x.jpg?v=1557218077",
  items: [
    usbDrive,
    portsmouthTShirt,
    lanyard,
  ],
);

final List<Collection> allCollections = [
  clothing,
  merchandise,
  popular,
  onSale,
];