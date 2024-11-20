import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart';

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
    drawerTheme: DrawerThemeData(
      backgroundColor: evangelionDarkPurple, // Fondo del drawer en púrpura oscuro
    ),
    scaffoldBackgroundColor: evangelionDarkPurple, // Fondo principal de la app en púrpura oscuro
  );
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/09.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          _buildMenuItem(context, title: "Cambiar Tema", route: null),
          _buildMenuItem(context, title: "Sección 1", route: '/seccion1'),
          _buildMenuItem(context, title: "Sección 2", route: '/seccion2'),
          _buildMenuItem(context, title: "Sección 3", route: '/seccion3'),
          _buildMenuItem(context, title: "Sección 4", route: '/seccion4'),
          _buildMenuItem(context, title: "Sección 5", route: '/seccion5'),
          _buildMenuItem(context, title: "Sección 6", route: '/seccion6'),
          _buildMenuItem(context, title: "Sección 7", route: '/seccion7'),
          _buildMenuItem(context, title: "Sección 8", route: '/seccion8'),
          _buildMenuItem(context, title: "Sección 9", route: '/seccion9'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, {required String title, String? route}) {
    return ListTile(
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.bodyLarge, // Cambiar el color dinámicamente según el tema
      ),
      onTap: () {
        Navigator.pop(context);
        if (route != null) {
          Navigator.pushNamed(context, route);
        } else {
          _showThemeDialog(context); // Mostrar diálogo para elegir tema
        }
      },
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Selecciona un tema"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text("Claro"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Claro');
                  Navigator.pop(context); // Cierra el diálogo
                },
              ),
              ListTile(
                title: const Text("Oscuro"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Oscuro');
                  Navigator.pop(context); // Cierra el diálogo
                },
              ),
              ListTile(
                title: const Text("Personalizado"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Personalizado');
                  Navigator.pop(context); // Cierra el diálogo
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
