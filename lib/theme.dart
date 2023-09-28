import 'package:flutter/material.dart';

enum ThemeType { red, blue }

class AppTheme {
  AppTheme._();

  static ThemeData getTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.red:
        return lightRed;
      case ThemeType.blue:
        return lightBlue;
    }
  }

  static ThemeData getDarkTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.red:
        return darkRed;
      case ThemeType.blue:
        return darkBlue;
    }
  }

  static ThemeData lightBlue = ThemeData(
      brightness: Brightness.light, colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.blue));
  static ThemeData darkBlue = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConstants.blue,
        brightness: Brightness.dark,
      ));

  static ThemeData lightRed =
      ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.red));
  static ThemeData darkRed = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
    seedColor: ColorConstants.red,
    brightness: Brightness.dark,
  ));
}

class ColorConstants {
  ColorConstants._();

  static const blue = Color(0xFF0000FF);
  static const red = Color(0xFFFF0000);
}
