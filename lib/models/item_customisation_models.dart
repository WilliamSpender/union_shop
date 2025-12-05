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
    required this.extraCost,
  });
}


class EnumCustomisation extends ItemCustomisation {
  final Customisation defaultValue;
  late List<DropdownMenuEntry<Customisation>> customisations;

  EnumCustomisation({
    required this.defaultValue,
    required super.name,
    required super.description,
    required List<Customisation> options,
  }) {
    customisations = options.map((type) {
      return DropdownMenuEntry<Customisation>(
        value: type,
        label: type.value,
      );
    }).toList();
  }

}
