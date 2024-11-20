import 'package:flutter/material.dart';
import 'themes.dart'; // Importa el archivo themes.dart

class ThemeNotifier extends ChangeNotifier {
  // El tema por defecto es Claro
  ThemeData _themeData = ThemeData.light();

  ThemeData get theme => _themeData;

  // Cambia el tema según la selección
  void setTheme(String theme) {
    if (theme == 'Claro') {
      _themeData = ThemeData.light(); // Tema claro
    } else if (theme == 'Oscuro') {
      _themeData = ThemeData.dark(); // Tema oscuro
    } else if (theme == 'Personalizado') {
      _themeData = customTheme(); // Usa el tema personalizado desde themes.dart
    }

    // Notificar a todos los escuchadores (widgets) que el tema ha cambiado
    notifyListeners();
  }
}
