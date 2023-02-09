import 'package:articals/presentation/color_managment.dart';
import 'package:articals/presentation/value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getThemeAplecation() {
  return ThemeData(
    primaryColor: ColorManagment.primary,
    primaryColorDark: ColorManagment.darkGrey,
    // card theme

    cardTheme: CardTheme(
        color: Colors.white,
        elevation: 5,
        margin: EdgeInsets.only(
          right: MargenManager.m8,
        )),
  );
}
