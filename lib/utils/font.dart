import 'package:flutter/material.dart';

TextStyle myTextStyle({
  String fontFamily = 'AKbalthomTechno',
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.normal,
  Color? color, 
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
