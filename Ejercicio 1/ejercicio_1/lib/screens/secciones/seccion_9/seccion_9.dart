import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class Seccion9 extends StatefulWidget {
  const Seccion9({super.key});

  @override
  _RandomImageAppState createState() => _RandomImageAppState();
}

class _RandomImageAppState extends State<Seccion9> {
  int points = 0;
  double posX = 0;
  double posY = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    moveImageRandomly();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      // Si no se tocó la imagen a tiempo, restamos puntos
      setState(() {
        points -= 2;
      });
      // Cambiamos la posición de la imagen
      moveImageRandomly();
    });
  }

  void moveImageRandomly() {
    setState(() {
      posX = Random().nextDouble() * 300;
      posY = Random().nextDouble() * 500;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 40,
              left: 20,
              child: Text(
                'Puntos: $points',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Positioned(
              left: posX,
              top: posY,
              child: GestureDetector(
                onTap: () {
                  // Al tocar la imagen se suman puntos y se mueve
                  setState(() {
                    points++;
                  });
                  moveImageRandomly();
                },
                child: Image.asset(
                  'assets/imagen.png', // Asegúrate de tener una imagen en assets
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
