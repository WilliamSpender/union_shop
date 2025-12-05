import 'package:flutter/material.dart';
import 'package:union_shop/models/item_customisation_models.dart';
import 'package:union_shop/styles/text_themes.dart';

import '../models/cart/cart_item_model.dart';
import '../models/item_model.dart';

class ItemConfigWidget extends StatefulWidget {
  late final CartItemModel cartItem;

  ItemConfigWidget({super.key, required Item item}) {
    cartItem = CartItemModel(item: item, quantity: 1);
  }

  @override
  State<StatefulWidget> createState() => _ItemConfigWidgetState();
}

class _ItemConfigWidgetState extends State<ItemConfigWidget> {
  // track selected customisations locally so we can supply a value to DropdownButton
  final Map<String, Customisation?> _selected = {};

  @override
  void initState() {
    super.initState();
    // initialize selections from defaults (and update cartItem if needed)
    for (final c in widget.cartItem.item.customisationOptions) {
      _selected[c.name] = c.defaultValue;
      widget.cartItem.updateCustomisation(c.name, c.defaultValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // return a widget per customisation using the collection-for expression (no braces)
        for (ItemCustomisation customisation
            in widget.cartItem.item.customisationOptions)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: DropdownMenu(
              label: Text(customisation.name),
              textStyle: customisationStyle,
              initialSelection: customisation.defaultValue,
              dropdownMenuEntries: customisation.customisations,
              onSelected: (Customisation? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selected[customisation.name] = newValue;
                    widget.cartItem
                        .updateCustomisation(customisation.name, newValue);
                  });
                }
              },
            ),
          ),
      ],
    );
  }
}
