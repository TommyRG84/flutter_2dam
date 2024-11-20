import 'package:flutter/material.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart'; // Importar ThemeNotifier
import 'package:provider/provider.dart'; // Importar Provider
import 'package:ejercicio_1/screens/screens.dart'; // Importar las pantallas de la aplicación

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Relación de ejercicios',
            theme: themeNotifier.theme, // Usar el tema actual del ThemeNotifier
            initialRoute: '/',
            routes: {
              '/': (context) => PantallaBienvenida(
                    onThemeChanged: (String theme) {
                      // Aquí pasas la función que cambiará el tema
                      themeNotifier.setTheme(theme);
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
