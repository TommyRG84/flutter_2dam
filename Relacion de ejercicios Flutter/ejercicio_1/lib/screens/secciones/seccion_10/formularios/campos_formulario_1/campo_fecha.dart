import 'package:flutter/material.dart';

class CampoFecha extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration campoEstilo;
  final String? Function(String?)? validator; // Agregar un validador personalizado

  const CampoFecha(
      {super.key, required this.controller, required this.campoEstilo, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: campoEstilo.copyWith(
        labelText: 'Fecha de nacimiento',
        hintText: 'Selecciona tu fecha de nacimiento',
        prefixIcon: const Icon(Icons.calendar_today),
      ),
      readOnly: true, // Para que el usuario no escriba directamente
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          controller.text = "${pickedDate.toLocal()}".split(' ')[0]; // Asigna la fecha seleccionada
        }
      },
      validator: validator, // Usamos el validador para comprobar si la fecha es válida
    );
  }
}
