import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/formulario_1.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/formulario_2.dart';
import 'package:ejercicio_1/screens/drawer/drawer.dart';

class Seccion10 extends StatefulWidget {
  const Seccion10({super.key});

  @override
  Seccion10State createState() => Seccion10State();
}

class Seccion10State extends State<Seccion10> {
  int _selectedForm = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 10"),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/fondoFormulario1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Selecciona un formulario:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(43, 182, 255, 254).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<int>(
                              value: 1,
                              groupValue: _selectedForm,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedForm = value ?? 1;
                                });
                              },
                            ),
                            const Text(
                              'Formulario 1',
                              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio<int>(
                              value: 2,
                              groupValue: _selectedForm,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedForm = value ?? 2;
                                });
                              },
                            ),
                            const Text(
                              'Formulario 2',
                              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_selectedForm == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Formulario1()),
                        );
                      } else if (_selectedForm == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Formulario2()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(154, 33, 149, 243),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: const Text(
                      'Pulsa aquí para acceder al Formulario Seleccionado',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
