import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  final Function(String) onThemeChanged; // Callback para cambiar el tema

  const PantallaBienvenida({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Cabecera con la imagen
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: UserAccountsDrawerHeader(
                accountName: Text('Usuario'),
                accountEmail: Text('usuario@correo.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/01.jpg'), // Asegúrate de tener una imagen aquí
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            // Secciones de la aplicación
            ListTile(
              title: const Text('Sección 1'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion1');
              },
            ),
            ListTile(
              title: const Text('Sección 2'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion2');
              },
            ),
            ListTile(
              title: const Text('Sección 3'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion3');
              },
            ),
            ListTile(
              title: const Text('Sección 4'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion4');
              },
            ),
            ListTile(
              title: const Text('Sección 5'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion5');
              },
            ),
            ListTile(
              title: const Text('Sección 6'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion6');
              },
            ),
            ListTile(
              title: const Text('Sección 7'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion7');
              },
            ),
            ListTile(
              title: const Text('Sección 8'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion8');
              },
            ),
            ListTile(
              title: const Text('Sección 9'),
              onTap: () {
                Navigator.pushNamed(context, '/seccion9');
              },
            ),
            // Opciones para cambiar el tema
            const Divider(),
            ListTile(
              title: const Text('Claro'),
              onTap: () {
                onThemeChanged('Claro'); // Cambiar al tema Claro
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Oscuro'),
              onTap: () {
                onThemeChanged('Oscuro'); // Cambiar al tema Oscuro
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Personalizado'),
              onTap: () {
                onThemeChanged('Personalizado'); // Cambiar al tema Personalizado
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Selecciona un tema desde el menú lateral.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
