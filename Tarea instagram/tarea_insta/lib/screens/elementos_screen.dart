import 'package:flutter/material.dart';
import 'package:tarea_insta/screens/secciones/menu_inferior.dart';

import 'secciones/seccion_inferior.dart';
import 'secciones/seccion_intermedia.dart';
import 'secciones/seccion_superior.dart';

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
