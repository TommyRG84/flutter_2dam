import 'package:flutter/material.dart';

class CampoDesplegable extends StatelessWidget {
  final String? selectedOption;
  final ValueChanged<String?> onChanged;
  final List<String> options;

  const CampoDesplegable({
    Key? key,
    required this.selectedOption,
    required this.onChanged,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
        value: selectedOption,
        onChanged: onChanged,
        items: _crearItemsDropDown(),
        decoration: InputDecoration(
          labelText: 'Tipo de contrato',
          labelStyle: const TextStyle(color: Colors.black), // Estilo de la etiqueta
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0, horizontal: 10.0), // Padding similar a otros campos
          prefixIcon: const Icon(Icons.list), // Icono similar a otros campos
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _crearItemsDropDown() {
    return options
        .map(
          (option) => DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          ),
        )
        .toList();
  }
}
