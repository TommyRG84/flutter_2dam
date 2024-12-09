import 'package:flutter/material.dart';

class CampoDesplegable extends StatelessWidget {
  final String? selectedOption;
  final ValueChanged<String?> onChanged;
  final List<String> options;
  final InputDecoration campoEstilo; // Agregamos el parámetro campoEstilo

  const CampoDesplegable({
    super.key,
    required this.selectedOption,
    required this.onChanged,
    required this.options,
    required this.campoEstilo, // Lo requerimos en el constructor
  });

  String? _validarSeleccion(String? value) {
    if (value == null || value.isEmpty) {
      return 'Selecciona una opción';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedOption,
      onChanged: onChanged,
      validator: _validarSeleccion,
      decoration: campoEstilo.copyWith(
        labelText: 'Género',
        hintText: 'Seleccione una opción',
        prefixIcon: const Icon(Icons.transgender),
      ),
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
