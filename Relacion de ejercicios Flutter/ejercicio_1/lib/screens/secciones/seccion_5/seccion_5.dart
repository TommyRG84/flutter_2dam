import 'package:ejercicio_1/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Seccion5 extends StatelessWidget {
  const Seccion5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 5"),
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
          child: Container(
            margin: const EdgeInsets.all(40),
            width: 350,
            height: 120,
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 72, 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(60),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.elliptical(10, 10),
              ),
            ),
            child: Container(
              width: 210,
              height: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 183, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Sección 5',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
