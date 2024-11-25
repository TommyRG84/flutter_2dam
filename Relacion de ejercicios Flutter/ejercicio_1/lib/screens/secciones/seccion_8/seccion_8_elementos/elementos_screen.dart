import 'package:flutter/material.dart';
import 'seccion_inferior.dart'; // Asegúrate de que este archivo sea el correcto
import 'menu_inferior.dart';
import 'seccion_intermedia.dart';
import 'seccion_superior.dart';

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
        // Aquí integras la Sección Inferior
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: SeccionInferior()) // Usamos Expanded para que ocupe el espacio restante
            ],
          ),
        ),
        Row(
          children: [MenuInferior()],
        ),
      ],
    );
  }
}
