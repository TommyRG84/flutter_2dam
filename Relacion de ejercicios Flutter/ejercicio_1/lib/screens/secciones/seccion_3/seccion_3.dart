import 'package:ejercicio_1/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Seccion3 extends StatelessWidget {
  const Seccion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 3"),
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
              SizedBox(
                width: 120,
                height: 150,
                child: Image.asset(
                  "assets/images/obey4.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 170,
                child: Image.asset(
                  "assets/images/obey5.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 150,
                child: Image.asset(
                  "assets/images/obey6.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
