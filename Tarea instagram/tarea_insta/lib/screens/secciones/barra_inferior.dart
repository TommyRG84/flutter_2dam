import 'package:flutter/material.dart';

class BarraInferior extends StatelessWidget {
  const BarraInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.redAccent,
      child: const Text(
        'Sección Inferior',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
