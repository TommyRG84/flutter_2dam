import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_apellidos.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_direccion.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_email.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_nombre.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_password.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/campos_formulario/campo_desplegable.dart';
import 'package:ejercicio_1/screens/drawer/drawer.dart';

class Seccion10 extends StatefulWidget {
  const Seccion10({super.key});

  @override
  Formulario createState() => Formulario();
}

class Formulario extends State<Seccion10> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController(); // Controlador para Apellidos
  final _direccionController = TextEditingController(); // Controlador para Dirección
  final _correoController = TextEditingController();
  final _passwordController = TextEditingController();

  // Variable para el valor seleccionado en el Dropdown
  String? _selectedOption;

  // Opciones del Dropdown
  final List<String> _options = ['Masculino', 'Femenino', 'Otro'];

  final InputDecoration _campoEstilo = InputDecoration(
    labelText: 'Campo',
    hintText: 'Ingresa el dato',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
  );

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
                // Campo de Nombre
                CampoNombre(controller: _nombreController, campoEstilo: _campoEstilo),
                const SizedBox(height: 20),

                // Campo de Apellidos
                CampoApellidos(controller: _apellidosController, campoEstilo: _campoEstilo),
                const SizedBox(height: 20),

                // Campo de Dirección
                CampoDireccion(controller: _direccionController, campoEstilo: _campoEstilo),
                const SizedBox(height: 20),

                // Campo de Correo Electrónico
                CampoEmail(controller: _correoController, campoEstilo: _campoEstilo),
                const SizedBox(height: 20),

                // Campo de Contraseña
                CampoPassword(controller: _passwordController, campoEstilo: _campoEstilo),
                const SizedBox(height: 20),

                // Campo Desplegable de Género
                CampoDesplegable(
                  selectedOption: _selectedOption,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  },
                  options: _options,
                  campoEstilo: _campoEstilo,
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
