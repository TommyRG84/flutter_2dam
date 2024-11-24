import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion6 extends StatelessWidget {
  const Seccion6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 6"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _filaDeIconos([Colors.teal]),
            const SizedBox(height: 10),
            _filaDeIconos([
              const Color.fromARGB(255, 0, 107, 150),
              const Color.fromARGB(255, 0, 62, 150),
              const Color.fromARGB(255, 0, 22, 150),
            ]),
            const SizedBox(height: 10),
            _filaDeIconos([
              const Color.fromARGB(255, 12, 0, 150),
              const Color.fromARGB(255, 67, 0, 150),
              const Color.fromARGB(255, 120, 0, 150),
              const Color.fromARGB(255, 150, 0, 137),
              const Color.fromARGB(255, 150, 0, 85),
            ]),
            const SizedBox(height: 10),
            _filaDeIconos([
              const Color.fromARGB(255, 150, 0, 45),
              const Color.fromARGB(255, 150, 0, 0),
              const Color.fromARGB(255, 150, 25, 0),
              const Color.fromARGB(255, 150, 80, 0),
              const Color.fromARGB(255, 150, 132, 0),
              const Color.fromARGB(255, 95, 150, 0),
              const Color.fromARGB(255, 17, 150, 0),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _filaDeIconos(List<Color> colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: colors
          .map((color) => Icon(
                Icons.adb,
                color: color,
              ))
          .toList(),
    );
  }
}
