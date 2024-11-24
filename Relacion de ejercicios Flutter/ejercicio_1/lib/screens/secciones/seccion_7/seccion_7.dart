import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion7 extends StatelessWidget {
  const Seccion7({super.key});

  @override
  Widget build(BuildContext context) {
    return const MiClase(
      title: 'Contador de clics',
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

  void _reiniciar() {
    setState(() {
      _contador = 0;
    });
  }

  void _restar() {
    setState(() {
      if (_contador > 0) {
        _contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const MenuLateral(),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementar,
            heroTag: 'incrementButton',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _reiniciar,
            heroTag: 'resetButton',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _restar,
            heroTag: 'restarButton',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
