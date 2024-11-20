import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion7 extends StatelessWidget {
  const Seccion7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de clics"),
      ),
      drawer: const MenuLateral(),
      body: const MiClase(
        title: 'Contador de clics',
      ),
    );
  }
}

class MiClase extends StatefulWidget {
  const MiClase({super.key, required this.title});
  final String title;

  @override
  State<MiClase> createState() => _MiClase();
}

class _MiClase extends State<MiClase> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Has pulsado...',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              '$_contador',
              style: const TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
      // Aquí está el FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementar, // Llama a _incrementar cuando se presiona
        child: const Icon(Icons.add),
      ),
    );
  }
}
