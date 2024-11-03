import 'package:flutter/material.dart';
import 'package:tarea_insta/screens/elementos_screen.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

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
      body: const BodyApp(),
    );
  }
}
