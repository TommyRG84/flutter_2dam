import 'package:flutter/material.dart';

class CampoEmail extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;

  const CampoEmail({super.key, required this.controller, required this.campoEstilo});

  String? _validarCorreo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!regex.hasMatch(value)) {
      return 'El correo electrónico debe cumplir las siguientes condiciones:\n'
          '- No puede estar vacío\n'
          '- Debe tener un formato válido (ejemplo: usuario@dominio.com)';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
          labelText: 'Correo Electrónico',
          hintText: 'ejemplo@dominio.com',
          prefixIcon: const Icon(Icons.email)),
      validator: _validarCorreo,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
