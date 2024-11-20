import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class Seccion9 extends StatefulWidget {
  const Seccion9({super.key});

  @override
  JuegoImagenAleatoria createState() => JuegoImagenAleatoria();
}

class JuegoImagenAleatoria extends State<Seccion9> {
  int points = 0;
  bool tapped = false;

  @override
  void initState() {
    super.initState();
    timer();
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 2000), (timer) {
      if (!tapped && points > 0) {
        points -= 2;
      }
      tapped = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double positionX = random.nextDouble() * (screenWidth - 120);
    double maxPositionY = screenHeight * 0.2;
    double positionY = maxPositionY + random.nextDouble() * (screenHeight - maxPositionY - 200);

    // Obtener el brillo actual del tema (claro u oscuro)
    Brightness brightness = Theme.of(context).brightness;

    // Establecer el color del texto según el brillo
    Color textoColor = (brightness == Brightness.dark) ? Colors.white : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 9"),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.1,
            left: screenWidth / 2 - 100,
            child: Text(
              'Puntos: $points',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: textoColor, // Color dinámico según el brillo del tema
              ),
            ),
          ),
          Positioned(
            left: positionX,
            top: positionY,
            child: GestureDetector(
              onTap: () {
                points++;
                tapped = true;
                setState(() {});
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/gato1.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
