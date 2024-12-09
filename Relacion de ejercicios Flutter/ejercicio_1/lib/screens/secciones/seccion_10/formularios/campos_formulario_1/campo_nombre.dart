import 'package:flutter/material.dart';

class CampoNombre extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;

  const CampoNombre({super.key, required this.controller, required this.campoEstilo});

  String? _validarNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^([A-ZÁÉÍÓÚÑ][a-záéíóúñ]+(?:\s[A-ZÁÉÍÓÚÑ][a-záéíóúñ]+)*){1,30}$');
    if (!regex.hasMatch(value) || value.length > 30) {
      return 'El nombre debe cumplir las siguientes condiciones:\n'
          '- No puede estar vacío\n'
          '- Cada palabra debe iniciar con mayúscula\n'
          '- Solo se permiten letras\n'
          '- Máximo 30 caracteres';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        prefixIcon: const Icon(Icons.person),
      ),
      validator: _validarNombre,
      keyboardType: TextInputType.text,
    );
  }
}
