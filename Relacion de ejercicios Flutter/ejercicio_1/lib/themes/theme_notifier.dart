import 'package:flutter/material.dart';
import 'themes.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  ThemeData get theme => _themeData;

  void setTheme(String theme) {
    if (theme == 'Claro') {
      _themeData = ThemeData.light();
    } else if (theme == 'Oscuro') {
      _themeData = ThemeData.dark();
    } else if (theme == 'Personalizado') {
      _themeData = customTheme();
    }
    notifyListeners();
  }
}
