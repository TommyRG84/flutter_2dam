import 'package:flutter/material.dart';

class CampoApellidos extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;

  const CampoApellidos({super.key, required this.controller, required this.campoEstilo});

  String? _validarApellidos(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^([A-ZÁÉÍÓÚÑ][a-záéíóúñ]+(?:\s[A-ZÁÉÍÓÚÑ][a-záéíóúñ]+)*){1,50}$');
    if (!regex.hasMatch(value) || value.length > 50) {
      return 'Los apellidos deben cumplir las siguientes condiciones:\n'
          '- No pueden estar vacíos\n'
          '- Cada palabra debe iniciar con mayúscula\n'
          '- Solo se permiten letras\n'
          '- Máximo 50 caracteres';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
        labelText: 'Apellidos',
        hintText: 'Ingresa tus apellidos',
        prefixIcon: const Icon(Icons.person_outline),
      ),
      validator: _validarApellidos,
      keyboardType: TextInputType.text,
    );
  }
}
