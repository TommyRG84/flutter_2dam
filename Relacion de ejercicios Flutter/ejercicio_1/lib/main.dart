import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _currentTheme = 'Claro';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relación de ejercicios',
      theme: AppThemes.themes[_currentTheme],
      initialRoute: '/',
      routes: {
        '/': (context) => PantallaBienvenida(
              onThemeChanged: (theme) => setState(() => _currentTheme = theme),
            ),
        '/seccion1': (context) => const Seccion1(),
        '/seccion2': (context) => const Seccion2(),
        '/seccion3': (context) => const Seccion3(),
        '/seccion4': (context) => const Seccion4(),
        '/seccion5': (context) => const Seccion5(),
        '/seccion6': (context) => const Seccion6(),
        '/seccion7': (context) => const Seccion7(),
        '/seccion8': (context) => const Seccion8(),
        '/seccion9': (context) => const Seccion9(),
      },
    );
  }
}
