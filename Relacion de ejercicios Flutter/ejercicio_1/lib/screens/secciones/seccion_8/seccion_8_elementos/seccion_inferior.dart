import 'package:flutter/material.dart';

class SeccionInferior extends StatefulWidget {
  const SeccionInferior({super.key});

  @override
  SeccionInferiorState createState() => SeccionInferiorState();
}

class SeccionInferiorState extends State<SeccionInferior> {
  // Lista de imágenes para cada galería
  final List<String> galeria1 = [
    "assets/images/01.jpg",
    "assets/images/02.jpg",
    "assets/images/03.jpg",
    "assets/images/04.jpg",
    "assets/images/05.jpg",
    "assets/images/06.jpg",
    "assets/images/07.jpeg",
    "assets/images/08.jpg",
    "assets/images/09.jpeg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
  ];

  final List<String> galeria2 = [
    "assets/images/obey1.jpg",
    "assets/images/obey2.jpg",
    "assets/images/obey3.jpg",
    "assets/images/obey4.jpg",
    "assets/images/obey5.jpg",
    "assets/images/obey6.jpg",
    "assets/images/obey7.jpg",
    "assets/images/obey8.jpeg",
    "assets/images/obey9.jpg",
    "assets/images/obey10.jpg",
    "assets/images/obey11.jpg",
    "assets/images/obey12.jpg",
  ];

  // Estado actual de las imágenes mostradas
  List<String> _imagenesActuales = [];

  @override
  void initState() {
    super.initState();
    _imagenesActuales = galeria1; // Mostrar la galería 1 por defecto
  }

  void _mostrarGaleria1() {
    setState(() {
      _imagenesActuales = galeria1;
    });
  }

  void _mostrarGaleria2() {
    setState(() {
      _imagenesActuales = galeria2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.grid_on),
                onPressed: _mostrarGaleria1, // Cambia a galería 1
              ),
              const SizedBox(
                width: 150,
              ),
              IconButton(
                icon: const Icon(Icons.assignment_ind),
                onPressed: _mostrarGaleria2, // Cambia a galería 2
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              children: _imagenesActuales.map((imagePath) {
                return contenedorImagen(imagePath);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Container contenedorImagen(String imagePath) {
    return Container(
      color: Colors.teal[600],
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
