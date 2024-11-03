import 'package:flutter/material.dart';

class SeccionIntermedia extends StatelessWidget {
  const SeccionIntermedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 395,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                  child: const Text('Editar perfil'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              _imagenRedondeada("assets/images/add.png", "Gatito"),
              const SizedBox(width: 20),
              _imagenRedondeada("assets/images/01.jpg", "Gatico"),
              const SizedBox(width: 20),
              _imagenRedondeada("assets/images/02.jpg", "Gatete"),
              const SizedBox(width: 20),
              _imagenRedondeada("assets/images/03.jpg", "Gatillo"),
              const SizedBox(width: 20),
              _imagenRedondeada("assets/images/04.jpg", "Gato")
            ],
          ),
        ],
      ),
    );
  }
}

Widget _imagenRedondeada(String imagePath, String label) {
  return Column(
    children: [
      ClipOval(
        child: SizedBox(
          width: 50, // Ancho fijo
          height: 50, // Alto fijo
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 4), // Espacio entre la imagen y el texto
      Text(
        label,
        style: const TextStyle(fontSize: 12), // Tamaño del texto
      ),
    ],
  );
}
