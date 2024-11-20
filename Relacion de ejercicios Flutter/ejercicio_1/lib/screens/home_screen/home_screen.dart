import 'package:flutter/material.dart'; // Importar Flutter
import 'package:google_fonts/google_fonts.dart'; // Para la fuente personalizada
import 'package:ejercicio_1/screens/drawer/menu_lateral.dart'; // Importar el MenuLateral

class PantallaBienvenida extends StatelessWidget {
  final Function(String) onThemeChanged; // Recibir el parámetro onThemeChanged

  const PantallaBienvenida(
      {super.key, required this.onThemeChanged}); // Asegúrate de recibir el parámetro

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Relación de ejercicios')),
      ),
      drawer: MenuLateral(onThemeChanged: onThemeChanged), // Pasar onThemeChanged al menú lateral
      body: Center(
        child: Text(
          'Bienvenido',
          style: GoogleFonts.anton(
            textStyle: const TextStyle(fontSize: 54),
          ),
        ),
      ),
    );
  }
}
