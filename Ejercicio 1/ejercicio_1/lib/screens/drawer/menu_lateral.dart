import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Ink(
            color: Colors.indigo,
            child: ListTile(
              title: const Text(
                "Sección 1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/seccion1');
              },
            ),
          ),
          ListTile(
            title: const Text("Sección 2"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion2');
            },
          ),
          ListTile(
            title: const Text("Sección 3"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion3');
            },
          ),
          ListTile(
            title: const Text("Sección 4"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion4');
            },
          ),
          ListTile(
            title: const Text("Sección 5"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion5');
            },
          ),
          ListTile(
            title: const Text("Sección 6"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion6');
            },
          ),
          ListTile(
            title: const Text("Sección 7"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion7');
            },
          ),
          ListTile(
            title: const Text("Sección 8"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion8');
            },
          ),
          ListTile(
            title: const Text("Sección 9"),
            onTap: () {
              Navigator.pushNamed(context, '/seccion9');
            },
          ),
        ],
      ),
    );
  }
}
