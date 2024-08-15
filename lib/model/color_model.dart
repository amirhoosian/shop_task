import 'package:flutter/material.dart';

class ColorModel {
  Color? color;
  bool? isSelekted;

  ColorModel({required this.color, required this.isSelekted});

  static List<ColorModel> getcolor() {
    List<ColorModel> color = [];

    color.add(ColorModel(color: Colors.yellow, isSelekted: false));
    color.add(ColorModel(color: Colors.red, isSelekted: false));
    color.add(ColorModel(color: Colors.black, isSelekted: false));
    color.add(ColorModel(color: Colors.white, isSelekted: false));
    return color;
  }
}
