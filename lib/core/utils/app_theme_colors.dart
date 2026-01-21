import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimaryColor = Color(0xff00A099);
  static const Color blackLight = Color(0xFF404968);
  static const Color white = Colors.white;
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "0xff$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
