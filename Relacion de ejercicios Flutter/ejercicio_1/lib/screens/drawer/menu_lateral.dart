import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Elimina padding predeterminado
        children: <Widget>[
          // Imagen de cabecera como DrawerHeader
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/09.jpeg'), // Ruta de la imagen
                fit: BoxFit.cover, // La imagen ocupa todo el espacio disponible
              ),
            ),
            child: null, // No se agrega contenido adicional al header
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
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required String title,
    required String route,
    Color textColor = Colors.black,
  }) {
    return ListTile(
      title: Text(title, style: TextStyle(color: textColor)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}
