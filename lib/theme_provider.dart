import 'package:flutter/material.dart';
import 'package:theme_demo/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  ThemeData theme = AppTheme.lightBlue;
  ThemeData darkTheme = AppTheme.darkBlue;

  void changeTheme(ThemeType themeType) {
    theme = AppTheme.getTheme(themeType);
    darkTheme = AppTheme.getDarkTheme(themeType);
    notifyListeners();
  }

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
