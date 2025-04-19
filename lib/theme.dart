import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightBlue = ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.blue));

  static ThemeData darkBlue = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConstants.blue,
        brightness: Brightness.dark,
      ));

  static ThemeData lightRed = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.red));

  static ThemeData darkRed = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
    seedColor: ColorConstants.red,
    brightness: Brightness.dark,
  ));
  static ThemeData lightGreen = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.green));

  static ThemeData darkGreen = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
    seedColor: ColorConstants.green,
    brightness: Brightness.dark,
  ));
  AppTheme._();

  static ThemeData getDarkTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.red:
        return darkRed;
      case ThemeType.blue:
        return darkBlue;
      case ThemeType.green:
        return darkGreen;
    }
  }

  static ThemeData getTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.red:
        return lightRed;
      case ThemeType.blue:
        return lightBlue;
      case ThemeType.green:
        return lightGreen;
    }
  }
}

class ColorConstants {
  static const blue = Color(0xFF0000FF);

  static const red = Color(0xFFFF0000);
  static const green = Color.fromARGB(255, 15, 147, 66);
  static const orange = Color.fromARGB(255, 238, 119, 0);
  ColorConstants._();
}

enum ThemeType { red, blue, green }
