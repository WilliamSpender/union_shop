import 'package:flutter/material.dart';


class ItemCustomisation  {
  final String name;
  final String description;
  late final Customisation defaultValue;
  late List<DropdownMenuEntry<Customisation>> customisations;

  ItemCustomisation({
    required this.name,
    required this.description,
    int defaultValueIndex = 0,
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

class Customisation {
  final String value;
  final double extraCost;

  Customisation({
    required this.value,
    this.extraCost = 0.0,
  });
}