import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  // Tema por defecto (Claro)
  ThemeData _themeData = ThemeData.light();

  // Getter para el tema actual
  ThemeData get theme => _themeData;

  // Método para cambiar el tema
  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notificar a los widgets que están escuchando
  }
}
