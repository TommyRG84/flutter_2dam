import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart';
import 'package:ejercicio_1/routes/app_routes.dart';

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
          _buildMenuItem(context, title: "Sección 1", route: AppRoutes.seccion1),
          _buildMenuItem(context, title: "Sección 2", route: AppRoutes.seccion2),
          _buildMenuItem(context, title: "Sección 3", route: AppRoutes.seccion3),
          _buildMenuItem(context, title: "Sección 4", route: AppRoutes.seccion4),
          _buildMenuItem(context, title: "Sección 5", route: AppRoutes.seccion5),
          _buildMenuItem(context, title: "Sección 6", route: AppRoutes.seccion6),
          _buildMenuItem(context, title: "Sección 7", route: AppRoutes.seccion7),
          _buildMenuItem(context, title: "Sección 8", route: AppRoutes.seccion8),
          _buildMenuItem(context, title: "Sección 9", route: AppRoutes.seccion9),
          _buildMenuItem(context, title: "Sección 10", route: AppRoutes.seccion10),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, {required String title, String? route}) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onTap: () {
        Navigator.pop(context);
        if (route != null) {
          Navigator.pushNamed(context, route);
        } else {
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
            children: <Widget>[
              ListTile(
                title: const Text("Claro"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Claro');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Oscuro"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Oscuro');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Personalizado"),
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false).setTheme('Personalizado');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
