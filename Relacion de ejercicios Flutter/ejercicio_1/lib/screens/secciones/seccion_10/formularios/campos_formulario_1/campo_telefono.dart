import 'package:flutter/material.dart';

class CampoTelefono extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;

  const CampoTelefono({super.key, required this.controller, required this.campoEstilo});

  String? _validarTelefono(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^\+?[0-9]{10,15}$');
    if (!regex.hasMatch(value)) {
      return 'Número de teléfono no válido';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
        labelText: 'Número de teléfono',
        hintText: 'Ingresa tu número de teléfono',
        prefixIcon: const Icon(Icons.phone),
      ),
      validator: _validarTelefono,
      keyboardType: TextInputType.phone,
    );
  }
}
