import 'package:flutter/material.dart';

class AppThemes {
  static final Map<String, ThemeData> themes = {
    'Claro': ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
        titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    'Oscuro': ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.white70),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.white60),
        titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    'Personalizado': ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 30, 88, 136),
        brightness: Brightness.light,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 20, color: Colors.deepPurple),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.deepPurpleAccent),
        titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    ),
  };
}
