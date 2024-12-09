import 'package:flutter/material.dart';

class CampoEmail extends StatelessWidget {
  final TextEditingController controller;

  const CampoEmail({super.key, required this.controller});

  String? _validarCorreo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!regex.hasMatch(value)) {
      return 'Por favor, introduce un correo electrónico válido';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Correo Electrónico',
        hintText: 'ejemplo@dominio.com',
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),
      ),
      validator: _validarCorreo,
      keyboardType: TextInputType.emailAddress, // Muestra el teclado adecuado
    );
  }
}
