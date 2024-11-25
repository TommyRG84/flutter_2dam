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

  final List<String> imagenes = [
    'assets/images/gato1.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
    'assets/images/05.jpg',
    'assets/images/06.jpg',
  ];

  @override
  void initState() {
    super.initState();
    timer();
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 2000), (timer) {
      if (!tapped && points > 0) {
        points -= 2;
        if (points < 0) {
          points = 0;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('¡Fallaste! -2 Puntos'),
            duration: Duration(milliseconds: 500),
          ),
        );
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
    Brightness brightness = Theme.of(context).brightness;
    Color textoColor = (brightness == Brightness.dark) ? Colors.white : Colors.black;
    String imagenAleatoria = imagenes[random.nextInt(imagenes.length)];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 9"),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/catsBG.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth / 2 - 100,
            child: Text(
              'Puntos: $points',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: textoColor,
              ),
            ),
          ),
          Positioned(
            left: positionX,
            top: positionY,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('¡Acertaste! +1 Punto'),
                    duration: Duration(milliseconds: 500),
                  ),
                );
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
                    color: const Color.fromARGB(255, 233, 184, 6),
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
                    child: Image.asset(imagenAleatoria, fit: BoxFit.cover),
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
