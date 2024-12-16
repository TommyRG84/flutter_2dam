import 'package:ejercicio_1/screens/drawer/drawer.dart';
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
            image: AssetImage('assets/images/androidBG.jpg'),
            fit: BoxFit.cover,
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
              const Text(
                'github.com/TommyRG84',
                style: TextStyle(
                  fontFamily: 'ABeeZee',
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
