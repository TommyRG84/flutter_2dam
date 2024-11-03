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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.adb,
                  color: Colors.teal,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 0, 107, 150),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 0, 62, 150),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 0, 22, 150),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 12, 0, 150),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 67, 0, 150),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 120, 0, 150),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 0, 137),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 0, 85),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 0, 45),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 0, 0),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 25, 0),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 80, 0),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 150, 132, 0),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 95, 150, 0),
                ),
                Icon(
                  Icons.adb,
                  color: Color.fromARGB(255, 17, 150, 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
