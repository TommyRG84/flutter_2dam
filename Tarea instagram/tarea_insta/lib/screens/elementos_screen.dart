import 'package:flutter/material.dart';
import 'package:tarea_insta/screens/secciones/seccion_inferior.dart';
import 'package:tarea_insta/screens/secciones/seccion_intermedia.dart';
import 'package:tarea_insta/screens/secciones/seccion_superior.dart';

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
        ],
      ),
    );
  }
}
