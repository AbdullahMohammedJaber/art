import 'package:articals/presentation/font_manager.dart';
import 'package:flutter/cupertino.dart';

// ignore: unused_element

// ignore: unused_element
TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: FontManager.fontFamile,
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
