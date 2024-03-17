import 'package:flutter/material.dart';

class ColorUtil {
  static Color camCyberBlue = const Color(0xFF0C7EA5); // Alpha is FF (255)
  static Color accentColor = const Color(0xFF179D86);

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
