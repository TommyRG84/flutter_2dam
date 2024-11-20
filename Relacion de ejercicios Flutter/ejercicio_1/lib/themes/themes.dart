import 'package:flutter/material.dart';

// Colores personalizados de la paleta Evangelion
const Color evangelionRed = Color(0xFFF23545); // Rojo
const Color evangelionPurple = Color(0xFF463973); // Púrpura
const Color evangelionDarkPurple = Color(0xFF382E59); // Púrpura oscuro
const Color evangelionLightRed = Color(0xFFF23030); // Rojo claro
const Color evangelionDarkRed = Color(0xFF8C2626); // Rojo oscuro

// Tema personalizado con la paleta Evangelion
ThemeData customTheme() {
  return ThemeData(
    primaryColor: evangelionRed, // Rojo como color primario
    colorScheme: const ColorScheme.light(
      primary: evangelionRed, // Rojo como color primario
      secondary: evangelionPurple, // Púrpura como color secundario
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: evangelionDarkRed), // Texto con color rojo oscuro
      bodyMedium: TextStyle(color: evangelionLightRed), // Texto con rojo claro
      displayLarge: TextStyle(color: evangelionPurple, fontSize: 24), // Títulos en púrpura
    ),
    appBarTheme: const AppBarTheme(
      color: evangelionRed, // Barra de la app con color rojo
      iconTheme: IconThemeData(color: Colors.white), // Íconos en blanco
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: evangelionPurple, // Botones de color púrpura
      textTheme: ButtonTextTheme.primary, // Texto de botones en color primario
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: evangelionDarkPurple, // Fondo del drawer en púrpura oscuro
    ),
    scaffoldBackgroundColor: evangelionDarkPurple, // Fondo principal de la app en púrpura oscuro
  );
}
