import 'package:ejercicio_1/screens/menu_lateral.dart';
import 'package:ejercicio_1/screens/seccion_8_elementos/elementos_screen.dart';
import 'package:flutter/material.dart';

class Seccion8 extends StatelessWidget {
  const Seccion8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('JohnBusinessCat'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0), // Añadimos padding a la derecha
            child: Icon(Icons.menu),
          ),
        ],
      ),
      drawer: const MenuLateral(),
      body: const BodyApp(),
    );
  }
}
