import 'package:flutter/material.dart';

class CampoAdivinarNumero extends StatelessWidget {
  final int numeroObjetivo;
  final int numeroIngresado;
  final Function(String) onChanged;
  final Function onPressed;
  final InputDecoration campoEstilo;

  const CampoAdivinarNumero({
    super.key,
    required this.numeroObjetivo,
    required this.numeroIngresado,
    required this.onChanged,
    required this.onPressed,
    required this.campoEstilo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: campoEstilo,
          onChanged: onChanged,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => onPressed(),
          child: const Text('Validar'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
