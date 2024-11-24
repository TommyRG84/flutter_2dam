import 'package:flutter/material.dart';

class SeccionSuperior extends StatelessWidget {
  const SeccionSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  ClipOval(
                    child: SizedBox(
                      width: 75, // Ancho fijo
                      height: 75, // Alto fijo
                      child: Image.asset(
                        "assets/images/gato1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "1.026",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [Text("Publicaciones")],
                  )
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "859",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [Text("Seguidores")],
                  )
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "211",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [Text("Seguidos")],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          // Primer Row
          const Row(
            children: [
              Text("John Bussinesscat",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
          // Segundo Row
          const Row(
            children: [
              Text(
                '"Miau"',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          // Tercer Row
          const Row(
            children: [
              Text(
                "johnbussinesscat.com/",
                style: TextStyle(
                    fontSize: 15, decoration: TextDecoration.underline, color: Colors.lightBlue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
