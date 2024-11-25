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
            const SizedBox(width: 50),
            const Icon(Icons.home),
            const SizedBox(width: 40),
            const Icon(Icons.search),
            const SizedBox(width: 40),
            const Icon(Icons.add_box_outlined),
            const SizedBox(width: 40),
            const Icon(Icons.favorite_border_outlined),
            const SizedBox(width: 40),
            ClipOval(
              child: SizedBox(
                width: 22,
                height: 22,
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
