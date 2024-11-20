import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaBienvenida extends StatelessWidget {
  final Function(String) onThemeChanged; // Agregar este parámetro

  const PantallaBienvenida(
      {super.key, required this.onThemeChanged}); // Asegúrate de recibirlo en el constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Relación de ejercicios')),
      ),
      drawer: MenuLateral(onThemeChanged: onThemeChanged), // Pasar onThemeChanged aquí
      body: Center(
        child: Text('Bienvenido',
            style: GoogleFonts.anton(
              textStyle: const TextStyle(fontSize: 54),
            )),
      ),
    );
  }
}
