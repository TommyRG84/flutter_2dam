import 'package:flutter/material.dart';

class CampoPassword extends StatefulWidget {
  final TextEditingController controller;

  const CampoPassword({super.key, required this.controller});

  @override
  CampoPasswordState createState() => CampoPasswordState();
}

class CampoPasswordState extends State<CampoPassword> {
  // Aquí definimos el método de validación
  String? _validarPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }

    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%?&])[A-Za-z\d@$!%?&]{8,}$');
    if (!regex.hasMatch(value)) {
      return 'La contraseña debe cumplir las siguientes condiciones:\n- Al menos 8 caracteres\n- Incluir una letra mayúscula\n- Una minúscula\n- Un número\n- Un carácter especial';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Ingresa tu contraseña',
        prefixIcon: Icon(Icons.lock),
        border: OutlineInputBorder(),
      ),
      validator: _validarPassword,
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
