import 'package:flutter/material.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart'; // Importar el ThemeNotifier
import 'package:provider/provider.dart'; // Importar Provider

class MenuLateral extends StatelessWidget {
  final Function(String) onThemeChanged;

  const MenuLateral({super.key, required this.onThemeChanged}); // Recibir la función onThemeChanged

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
          // Aquí agregamos las secciones del menú lateral
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

  // Función para construir los elementos del menú
  Widget _buildMenuItem(BuildContext context, {required String title, String? route}) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Cierra el menú lateral
        if (route != null) {
          Navigator.pushNamed(context, route); // Navega si hay una ruta definida
        } else {
          _showThemeDialog(context); // Muestra el diálogo para cambiar el tema
        }
      },
    );
  }

  // Función para mostrar el diálogo de selección de tema
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
                  // Cambiar a tema claro
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme(ThemeData.light());
                  Navigator.pop(context); // Cierra el diálogo
                },
              ),
              ListTile(
                title: const Text("Oscuro"),
                onTap: () {
                  // Cambiar a tema oscuro
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme(ThemeData.dark());
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
