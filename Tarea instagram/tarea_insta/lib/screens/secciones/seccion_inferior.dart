import 'package:flutter/material.dart';

class SeccionInferior extends StatelessWidget {
  const SeccionInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Row(
            children: [
              Icon(Icons.grid_on),
              SizedBox(
                width: 150,
              ),
              Icon(Icons.assignment_ind),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 410,
            height: 238,
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              children: [
                contenedorImagen("assets/images/04.jpg"),
                contenedorImagen("assets/images/05.jpg"),
                contenedorImagen("assets/images/06.jpg"),
                contenedorImagen("assets/images/07.jpeg"),
                contenedorImagen("assets/images/08.jpg"),
                contenedorImagen("assets/images/09.jpeg"),
                contenedorImagen("assets/images/10.jpg"),
                contenedorImagen("assets/images/11.jpg"),
                contenedorImagen("assets/images/12.jpg"),
              ],
            ),
          )
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
