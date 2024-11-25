import 'package:flutter/material.dart';

const Color evangelionRed = Color(0xFFF23545);
const Color evangelionPurple = Color(0xFF463973);
const Color evangelionDarkPurple = Color(0xFF382E59);
const Color evangelionLightRed = Color(0xFFF23030);
const Color evangelionDarkRed = Color(0xFF8C2626);

ThemeData customTheme() {
  return ThemeData(
    primaryColor: evangelionRed,
    colorScheme: const ColorScheme.light(
      primary: evangelionRed,
      secondary: evangelionPurple,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: evangelionDarkRed,
        fontFamily: 'HelpMe',
      ),
      bodyMedium: TextStyle(
        color: evangelionLightRed,
        fontFamily: 'HelpMe',
      ),
      displayLarge: TextStyle(
        color: evangelionPurple,
        fontFamily: 'HelpMe',
        fontSize: 24,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: evangelionRed,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: evangelionPurple,
      textTheme: ButtonTextTheme.primary,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: evangelionDarkPurple,
    ),
    scaffoldBackgroundColor: evangelionDarkPurple,
    fontFamily: 'HelpMe',
  );
}
