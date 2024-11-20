import 'package:flutter/material.dart';

class AppThemes {
  static final Map<String, ThemeData> themes = {
    'Claro': ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.light),
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Roboto'),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Roboto'),
        titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
        scrimColor: Colors.black45,
        elevation: 16.0,
      ),
    ),
    'Oscuro': ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey, brightness: Brightness.dark),
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Roboto'),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'Roboto'),
        titleLarge: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Roboto'),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.black, // Fondo oscuro para el Drawer
        scrimColor: Colors.black45,
        elevation: 16.0,
      ),
    ),
    'Personalizado': ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 30, 88, 136),
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 245, 230),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.deepPurple, fontFamily: 'Lobster'),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.deepPurpleAccent, fontFamily: 'Lobster'),
        titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
            fontFamily: 'Lobster'),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
        scrimColor: Colors.black45,
        elevation: 16.0,
      ),
    ),
  };
}
