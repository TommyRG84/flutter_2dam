import 'package:flutter/material.dart';

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
      // Tema personalizado con características específicas
      _themeData = ThemeData(
        primaryColor: const Color.fromARGB(255, 22, 7, 163), // Color primario
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 22, 7, 163), // Cambiamos el color primario
          secondary: Colors.orange, // Color de acento
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Estilo de texto blanco
          bodyMedium: TextStyle(color: Colors.grey), // Estilo de texto gris
          displayLarge: TextStyle(color: Colors.orange, fontSize: 24), // Título en naranja
        ),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 22, 7, 163), // Color de la barra de la app
          iconTheme: IconThemeData(color: Colors.white),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color.fromARGB(255, 22, 7, 163), // Color de los botones
          textTheme: ButtonTextTheme.primary,
        ),
      );
    }

    // Notificar a todos los escuchadores (widgets) que el tema ha cambiado
    notifyListeners();
  }
}
