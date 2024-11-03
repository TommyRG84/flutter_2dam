import 'package:ejercicio_1/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relación de ejercicios',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 30, 88, 136)),
      home: const PantallaBienvenida(),
    );
  }
}
