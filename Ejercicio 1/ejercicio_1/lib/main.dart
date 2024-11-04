import 'screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Relación de ejercicios',
        theme:
            ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 30, 88, 136)),
        initialRoute: '/',
        routes: {
          '/': (context) => const PantallaBienvenida(),
          '/seccion1': (context) => const Seccion1(),
          '/seccion2': (context) => const Seccion2(),
          '/seccion3': (context) => const Seccion3(),
          '/seccion4': (context) => const Seccion4(),
          '/seccion5': (context) => const Seccion5(),
          '/seccion6': (context) => const Seccion6(),
          '/seccion7': (context) => const Seccion7(),
          '/seccion8': (context) => const Seccion8(),
        });
  }
}
