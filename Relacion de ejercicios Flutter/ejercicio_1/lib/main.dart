import 'package:flutter/material.dart'; // Importar el paquete provider
import 'package:ejercicio_1/themes/theme_notifier.dart'; // Importar el ThemeNotifier
import 'package:provider/provider.dart';
import 'screens/screens.dart'; // Importar las pantallas de la aplicación

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(), // Crear y proporcionar el ThemeNotifier
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Relación de ejercicios',
            theme: themeNotifier.theme, // Establecer el tema actual
            initialRoute: '/',
            routes: {
              '/': (context) => PantallaBienvenida(
                    onThemeChanged: (theme) {
                      if (theme == 'Claro') {
                        themeNotifier.setTheme(ThemeData.light());
                      } else {
                        themeNotifier.setTheme(ThemeData.dark());
                      }
                    },
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
        },
      ),
    );
  }
}
