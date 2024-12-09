import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/formulario_1.dart';

class Seccion10 extends StatelessWidget {
  const Seccion10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 10"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Formulario1()),
                );
              },
              child: const Text('Acceder a Formulario 1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Formulario1()),
                );
              },
              child: const Text('Acceder a Formulario 2'),
            ),
          ],
        ),
      ),
    );
  }
}
