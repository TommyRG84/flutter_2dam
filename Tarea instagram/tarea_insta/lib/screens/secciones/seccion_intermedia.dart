import 'package:flutter/material.dart';

class SeccionIntermedia extends StatelessWidget {
  const SeccionIntermedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      color: Colors.greenAccent,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 375,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _imagenRedondeada("assets/images/gato1.jpg", "Gato"),
              _imagenRedondeada("assets/images/gato1.jpg", "Gato"),
              _imagenRedondeada("assets/images/gato1.jpg", "Gato"),
              _imagenRedondeada("assets/images/gato1.jpg", "Gato"),
              _imagenRedondeada("assets/images/gato1.jpg", "Gato")
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
