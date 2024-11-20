import 'package:flutter/material.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart'; // Importar ThemeNotifier
import 'package:provider/provider.dart'; // Importar Provider

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key, required Function(String p1) onThemeChanged});

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
      title: Text(title),
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
