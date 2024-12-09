import 'package:flutter/material.dart';

class CampoDireccion extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;

  const CampoDireccion({super.key, required this.controller, required this.campoEstilo});

  String? _validarDireccion(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    final regex = RegExp(r'^[A-ZÁÉÍÓÚÑ][a-záéíóúñ0-9\s-]{1,100}$');
    if (!regex.hasMatch(value) || value.length > 100) {
      return 'La dirección debe cumplir las siguientes condiciones:\n'
          '- No puede estar vacía\n'
          '- Solo se permiten letras, números, espacios y el signo "-"\n'
          '- Máximo 100 caracteres';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
        labelText: 'Dirección',
        hintText: 'Ingresa tu dirección',
        prefixIcon: const Icon(Icons.location_on),
      ),
      validator: _validarDireccion,
      keyboardType: TextInputType.streetAddress,
    );
  }
}
