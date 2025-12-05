import 'package:flutter/material.dart';


abstract class ItemCustomisation  {
  final String name;
  final String description;

  const ItemCustomisation({
    required this.name,
    required this.description,
  });
}

class Customisation {
  final String value;
  final double extraCost;

  Customisation({
    required this.value,
    this.extraCost = 0.0,
  });
}


class EnumCustomisation extends ItemCustomisation {
  late final Customisation defaultValue;
  late List<DropdownMenuEntry<Customisation>> customisations;

  EnumCustomisation({
    int defaultValueIndex = 0,
    required super.name,
    required super.description,
    required List<Customisation> options,
  }) {
    defaultValue = options[defaultValueIndex];
    customisations = options.map((type) {
      return DropdownMenuEntry<Customisation>(
        value: type,
        label: type.value,
      );
    }).toList();
  }

}
