import 'package:flutter/material.dart';

class AppThemes {
  // Tema claro (por defecto)
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue, // Color principal
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.green,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
      bodyMedium: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Tema oscuro
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey[850],
    colorScheme: const ColorScheme.dark(
      primary: Colors.grey,
      secondary: Colors.red,
    ),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: const TextStyle(fontSize: 18, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[400]),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.grey,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.grey,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Tema personalizado
  static final ThemeData customTheme = ThemeData(
    primaryColor: Colors.deepPurple,
    colorScheme: const ColorScheme.light(
      primary: Colors.deepPurple,
      secondary: Colors.amber,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: const TextStyle(fontSize: 18, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.grey[700]),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
