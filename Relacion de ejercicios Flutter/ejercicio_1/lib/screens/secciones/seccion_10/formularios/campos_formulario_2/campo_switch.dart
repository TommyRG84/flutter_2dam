import 'package:flutter/material.dart';

class CampoSwitch extends StatelessWidget {
  final bool tieneVehiculo;
  final ValueChanged<bool?> onChanged;

  const CampoSwitch({super.key, required this.tieneVehiculo, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('¿Tienes vehículo?'),
      value: tieneVehiculo,
      onChanged: onChanged,
    );
  }
}
