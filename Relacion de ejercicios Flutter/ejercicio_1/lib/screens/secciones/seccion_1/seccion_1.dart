import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Seccion1 extends StatelessWidget {
  const Seccion1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 1"),
      ),
      drawer: const MenuLateral(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/androidBG.jpg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajuste para cubrir toda la pantalla
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tomás Ruiz González',
                style: GoogleFonts.anton(
                  textStyle: const TextStyle(fontSize: 24),
                ),
              ),
              Text(
                'github.com/TommyRG84',
                style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
