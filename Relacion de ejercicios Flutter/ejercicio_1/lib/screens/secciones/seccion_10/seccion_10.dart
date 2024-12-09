// archivo: seccion_10.dart

import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_email.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_nombre.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_password.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_desplegable.dart'; // Importación actualizada
import 'package:ejercicio_1/screens/drawer/drawer.dart';

class Seccion10 extends StatefulWidget {
  const Seccion10({super.key});

  @override
  Formulario createState() => Formulario();
}

class Formulario extends State<Seccion10> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _correoController = TextEditingController();
  final _passwordController = TextEditingController();

  // Variable para el valor seleccionado en el Dropdown
  String? _selectedOption;

  // Opciones del Dropdown
  final List<String> _options = ['Opción 1', 'Opción 2', 'Opción 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 10"),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CampoNombre(controller: _nombreController),
                const SizedBox(height: 20),
                CampoEmail(controller: _correoController),
                const SizedBox(height: 20),
                CampoPassword(controller: _passwordController),
                const SizedBox(height: 20),

                // Utilizamos el widget CampoDesplegable
                CampoDesplegable(
                  selectedOption: _selectedOption,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  },
                  options: _options,
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Formulario válido')),
                      );
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
