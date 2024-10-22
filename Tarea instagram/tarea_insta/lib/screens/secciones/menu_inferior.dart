import 'package:flutter/material.dart';

class MenuInferior extends StatelessWidget {
  const MenuInferior({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.home),
            const Icon(Icons.search),
            const Icon(Icons.add_box_outlined),
            const Icon(Icons.favorite_border_outlined),
            ClipOval(
              child: SizedBox(
                width: 22, // Ancho fijo
                height: 22, // Alto fijo
                child: Image.asset(
                  "assets/images/gato1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
