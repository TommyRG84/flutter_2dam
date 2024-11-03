import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion2 extends StatelessWidget {
  const Seccion2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 2"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen 1
            SizedBox(
              width: 120, // Ancho fijo
              height: 150, // Alto fijo
              child: Image.asset(
                "assets/images/obey1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10), // Espacio entre las imágenes

            // Imagen 2
            SizedBox(
              width: 120, // Ancho fijo
              height: 170, // Alto fijo
              child: Image.asset(
                "assets/images/obey3.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10), // Espacio entre las imágenes

            // Imagen 3
            SizedBox(
              width: 120, // Ancho fijo
              height: 150, // Alto fijo
              child: Image.asset(
                "assets/images/obey2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
