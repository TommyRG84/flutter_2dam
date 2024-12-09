import 'package:flutter/material.dart';

class CampoCasillaVerificacion extends StatelessWidget {
  final bool valor;
  final ValueChanged<bool?> onChanged;

  const CampoCasillaVerificacion({super.key, required this.valor, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('¿Tienes permiso de conducir?'),
      value: valor,
      onChanged: onChanged,
    );
  }
}
