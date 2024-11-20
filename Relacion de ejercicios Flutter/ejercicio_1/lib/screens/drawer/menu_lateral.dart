import 'package:ejercicio_1/themes/themes.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  final Function(String) onThemeChanged; // Recibe la función para cambiar el tema

  const MenuLateral({super.key, required this.onThemeChanged}); // Constructor que recibe la función

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          _buildMenuItem(context, title: "Sección 1", route: '/seccion1'),
          _buildMenuItem(context, title: "Sección 2", route: '/seccion2'),
          _buildMenuItem(context, title: "Sección 3", route: '/seccion3'),
          _buildMenuItem(context, title: "Sección 4", route: '/seccion4'),
          _buildMenuItem(context, title: "Sección 5", route: '/seccion5'),
          _buildMenuItem(context, title: "Sección 6", route: '/seccion6'),
          _buildMenuItem(context, title: "Sección 7", route: '/seccion7'),
          _buildMenuItem(context, title: "Sección 8", route: '/seccion8'),
          _buildMenuItem(context, title: "Sección 9", route: '/seccion9'),
          _buildMenuItem(context,
              title: "Cambiar Tema", route: null) // Agregamos un ítem para cambiar el tema
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required String title,
    String? route,
    Color textColor = Colors.black,
  }) {
    return ListTile(
      title: Text(title, style: TextStyle(color: textColor)),
      onTap: () {
        Navigator.pop(context);
        if (route != null) {
          Navigator.pushNamed(context, route);
        } else {
          // Si se toca "Cambiar Tema", se muestra un diálogo para cambiar el tema
          _showThemeDialog(context);
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
            children: AppThemes.themes.keys.map((String theme) {
              return ListTile(
                title: Text(theme),
                onTap: () {
                  onThemeChanged(theme); // Llama a la función de cambio de tema
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
