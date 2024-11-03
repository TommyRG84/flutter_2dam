import 'package:ejercicio_1/screens/secciones/seccion_3/seccion_3.dart';
import 'package:ejercicio_1/screens/secciones/seccion_4/seccion_4.dart';
import 'package:ejercicio_1/screens/secciones/seccion_5/seccion_5.dart';
import 'package:ejercicio_1/screens/secciones/seccion_6/seccion_6.dart';
import 'package:ejercicio_1/screens/secciones/seccion_7/seccion_7.dart';
import 'package:ejercicio_1/screens/secciones/seccion_8/seccion_8.dart';
import 'package:ejercicio_1/screens/secciones/seccion_9/seccion_9.dart';
import 'package:flutter/material.dart';
import '../secciones/seccion_1/seccion_1.dart';
import '../secciones/seccion_2/seccion_2.dart';

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
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion1()));
              },
            ),
          ),
          ListTile(
            title: const Text("Sección 2"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion2()));
            },
          ),
          ListTile(
            title: const Text("Sección 3"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion3()));
            },
          ),
          ListTile(
            title: const Text("Sección 4"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion4()));
            },
          ),
          ListTile(
            title: const Text("Sección 5"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion5()));
            },
          ),
          ListTile(
            title: const Text("Sección 6"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion6()));
            },
          ),
          ListTile(
            title: const Text("Sección 7"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion7()));
            },
          ),
          ListTile(
            title: const Text("Sección 8"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion8()));
            },
          ),
          ListTile(
            title: const Text("Sección 9"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => const Seccion9()));
            },
          ),
        ],
      ),
    );
  }
}
