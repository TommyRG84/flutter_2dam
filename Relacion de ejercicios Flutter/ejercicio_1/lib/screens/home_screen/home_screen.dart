import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  final Function(String) onThemeChanged; // Callback para cambiar el tema

  const PantallaBienvenida({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text(
          'Selecciona un tema desde el menú lateral.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
