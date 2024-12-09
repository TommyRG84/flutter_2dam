import 'package:flutter/material.dart';

class CampoSlider extends StatelessWidget {
  final double valor;
  final ValueChanged<double> onChanged;

  const CampoSlider({super.key, required this.valor, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('¿Cuántos años hace que tienes el permiso de conducir?'),
          Slider(
            value: valor,
            min: 0,
            max: 50,
            divisions: 50,
            label: valor.round().toString(),
            onChanged: onChanged,
          ),
          Text('Años: ${valor.toStringAsFixed(0)}'),
        ],
      ),
    );
  }
}
