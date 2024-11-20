import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion3 extends StatelessWidget {
  const Seccion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 3"),
      ),
      drawer: MenuLateral(onThemeChanged: (theme) {}),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen 1
            SizedBox(
              width: 120, // Ancho fijo
              height: 150, // Alto fijo
              child: Image.asset(
                "assets/images/obey4.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10), // Espacio entre las imágenes

            // Imagen 2
            SizedBox(
              width: 120, // Ancho fijo
              height: 170, // Alto fijo
              child: Image.asset(
                "assets/images/obey5.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10), // Espacio entre las imágenes

            // Imagen 3
            SizedBox(
              width: 120, // Ancho fijo
              height: 150, // Alto fijo
              child: Image.asset(
                "assets/images/obey6.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
