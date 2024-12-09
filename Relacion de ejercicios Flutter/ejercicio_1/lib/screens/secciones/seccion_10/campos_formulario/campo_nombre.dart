import 'package:flutter/material.dart';

class CampoNombre extends StatelessWidget {
  final TextEditingController controller;

  const CampoNombre({super.key, required this.controller});

  String? _validarNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+$');
    if (!regex.hasMatch(value)) {
      return 'Solo se permiten letras, acentos y espacios';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),
      validator: _validarNombre,
      keyboardType: TextInputType.text,
    );
  }
}
