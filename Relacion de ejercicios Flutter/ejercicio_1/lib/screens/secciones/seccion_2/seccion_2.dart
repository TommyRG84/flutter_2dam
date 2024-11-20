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
            SizedBox(
              width: 120,
              height: 150,
              child: Image.asset(
                "assets/images/obey1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120, // Ancho fijo
              height: 170, // Alto fijo
              child: Image.asset(
                "assets/images/obey3.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              height: 150,
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
