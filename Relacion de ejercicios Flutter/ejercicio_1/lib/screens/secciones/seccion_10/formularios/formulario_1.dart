import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_fecha.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_telefono.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_apellidos.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_direccion.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_email.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_nombre.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_password.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_1/campo_desplegable.dart';

class Formulario1 extends StatefulWidget {
  const Formulario1({super.key});

  @override
  Formulario1State createState() => Formulario1State();
}

class Formulario1State extends State<Formulario1> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _direccionController = TextEditingController();
  final _correoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fechaController = TextEditingController();
  final _telefonoController = TextEditingController();

  String? _selectedOption;

  final List<String> _options = ['Masculino', 'Femenino', 'Otro'];

  final InputDecoration _campoEstilo = InputDecoration(
    labelText: 'Campo',
    hintText: 'Ingresa el dato',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
  );

  String? _validarFecha(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor selecciona una fecha de nacimiento';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario 1"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/fondoFormulario1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CampoNombre(controller: _nombreController, campoEstilo: _campoEstilo),
                  const SizedBox(height: 20),
                  CampoApellidos(controller: _apellidosController, campoEstilo: _campoEstilo),
                  const SizedBox(height: 20),
                  CampoDireccion(controller: _direccionController, campoEstilo: _campoEstilo),
                  const SizedBox(height: 20),
                  CampoEmail(controller: _correoController, campoEstilo: _campoEstilo),
                  const SizedBox(height: 20),
                  CampoPassword(controller: _passwordController, campoEstilo: _campoEstilo),
                  const SizedBox(height: 20),
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
                  CampoFecha(
                    controller: _fechaController,
                    campoEstilo: _campoEstilo,
                    validator: _validarFecha,
                  ),
                  const SizedBox(height: 20),
                  CampoTelefono(controller: _telefonoController, campoEstilo: _campoEstilo),
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
