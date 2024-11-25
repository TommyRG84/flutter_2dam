import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/screens.dart'; // Asegúrate de que todas las pantallas estén incluidas aquí.

class AppRoutes {
  // Define las rutas
  static const initialRoute = '/bienvenida';
  static const seccion1 = '/seccion1';
  static const seccion2 = '/seccion2';
  static const seccion3 = '/seccion3';
  static const seccion4 = '/seccion4';
  static const seccion5 = '/seccion5';
  static const seccion6 = '/seccion6';
  static const seccion7 = '/seccion7';
  static const seccion8 = '/seccion8';
  static const seccion9 = '/seccion9';

  // Rutas y widgets asociados
  static Map<String, Widget Function(BuildContext)> getRoutes(Function(String) onThemeChanged) {
    return {
      initialRoute: (context) => PantallaBienvenida(onThemeChanged: onThemeChanged),
      seccion1: (context) => const Seccion1(),
      seccion2: (context) => const Seccion2(),
      seccion3: (context) => const Seccion3(),
      seccion4: (context) => const Seccion4(),
      seccion5: (context) => const Seccion5(),
      seccion6: (context) => const Seccion6(),
      seccion7: (context) => const Seccion7(),
      seccion8: (context) => const Seccion8(),
      seccion9: (context) => const Seccion9(),
    };
  }
}
