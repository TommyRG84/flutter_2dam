import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaBienvenida extends StatelessWidget {
  final Function(String) onThemeChanged;

  const PantallaBienvenida({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      drawer: const MenuLateral(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/androidBG.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Bienvenido',
            style: GoogleFonts.anton(
              textStyle: const TextStyle(fontSize: 48),
            ),
          ),
        ),
      ),
    );
  }
}
