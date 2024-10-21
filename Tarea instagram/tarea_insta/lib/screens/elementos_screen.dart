import 'package:flutter/material.dart';

import 'secciones/seccion_inferior.dart';
import 'secciones/seccion_intermedia.dart';
import 'secciones/seccion_superior.dart';
import 'secciones/barra_inferior.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [SeccionSuperior()],
          ),
          SizedBox(height: 16), // Separador entre filas
          Row(
            children: [SeccionIntermedia()],
          ),
          SizedBox(height: 16), // Separador entre filas
          Row(
            children: [SeccionInferior()],
          ),
          Row(
            children: [BarraInferior()],
          ),
        ],
      ),
    );
  }
}
