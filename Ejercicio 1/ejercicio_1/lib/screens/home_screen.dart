import 'package:ejercicio_1/screens/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Ejercicio 01')),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Text('Bienvenido',
            style: GoogleFonts.anton(
              textStyle: const TextStyle(fontSize: 54),
            )),
      ),
    );
  }
}
