import 'package:flutter/material.dart';

class Item {
  final String name;
  final String unit;
  final int price;
  final String image;

  Item({this.name, this.unit, this.price, this.image});

  Map toJson() {
    return {
      'name': name,
      'unit': unit,
      'price': price,
      'image': image,
    };
  }
}
