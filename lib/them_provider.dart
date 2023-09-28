import 'package:demo_theme_flutter/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  ThemeData theme = AppTheme.lightBlue;
  ThemeData darkTheme = AppTheme.darkBlue;

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void changeTheme(ThemeType themeType) {
    theme = AppTheme.getTheme(themeType);
    darkTheme = AppTheme.getDarkTheme(themeType);
    notifyListeners();
  }
}
