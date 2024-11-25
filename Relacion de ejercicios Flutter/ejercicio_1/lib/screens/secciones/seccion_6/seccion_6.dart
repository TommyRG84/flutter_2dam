import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion6 extends StatelessWidget {
  const Seccion6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 6"),
      ),
      drawer: const MenuLateral(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/androidBG.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _filaDeIconos([
                {'icon': Icons.settings, 'label': 'Ajustes', 'color': Colors.blue},
              ]),
              const SizedBox(height: 20),
              _filaDeIconos([
                {'icon': Icons.map, 'label': 'Mapa', 'color': Colors.green},
                {'icon': Icons.notifications, 'label': 'Notificaciones', 'color': Colors.red},
              ]),
              const SizedBox(height: 20),
              _filaDeIconos([
                {'icon': Icons.camera_alt, 'label': 'Cámara', 'color': Colors.purple},
                {'icon': Icons.phone, 'label': 'Teléfono', 'color': Colors.orange},
                {'icon': Icons.email, 'label': 'Correo', 'color': Colors.teal},
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filaDeIconos(List<Map<String, dynamic>> elementos) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: elementos.map((elemento) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Icon(
                elemento['icon'],
                size: 50,
                color: elemento['color'] ?? Colors.teal,
              ),
              const SizedBox(height: 5),
              Text(
                elemento['label'],
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
