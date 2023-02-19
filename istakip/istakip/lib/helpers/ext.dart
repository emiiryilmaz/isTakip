import 'package:flutter/material.dart';

const String backgroundColor = "3E4050";
const String textColor = "7FBC99";

class Renk extends Color {
  static int _donustur(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  Renk(final String renk_kodu) : super(_donustur(renk_kodu));
}
