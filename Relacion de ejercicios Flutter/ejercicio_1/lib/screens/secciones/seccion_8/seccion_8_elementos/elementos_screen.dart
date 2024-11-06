import 'package:ejercicio_1/screens/secciones/seccion_8/seccion_8_elementos/menu_inferior.dart';
import 'package:ejercicio_1/screens/secciones/seccion_8/seccion_8_elementos/seccion_inferior.dart';
import 'package:ejercicio_1/screens/secciones/seccion_8/seccion_8_elementos/seccion_intermedia.dart';
import 'package:ejercicio_1/screens/secciones/seccion_8/seccion_8_elementos/seccion_superior.dart';
import 'package:flutter/material.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [SeccionSuperior()],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: [SeccionIntermedia()],
          ),
        ),
        Row(
          children: [SeccionInferior()],
        ),
        Row(
          children: [MenuInferior()],
        )
      ],
    );
  }
}
