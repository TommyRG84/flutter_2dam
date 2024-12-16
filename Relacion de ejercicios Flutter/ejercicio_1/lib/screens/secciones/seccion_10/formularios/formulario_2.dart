import 'package:flutter/material.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_2/campo_adivinar_numero.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_2/campo_casilla_verificacion.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_2/campo_slider.dart';
import 'package:ejercicio_1/screens/secciones/seccion_10/formularios/campos_formulario_2/campo_switch.dart';

class Formulario2 extends StatefulWidget {
  const Formulario2({super.key});

  @override
  Formulario2State createState() => Formulario2State();
}

class Formulario2State extends State<Formulario2> {
  final _formKey = GlobalKey<FormState>();
  bool _tienePermisoConducir = false;
  bool _tieneVehiculo = false;
  double _anyosPermisoConducir = 0.0;
  final int _numeroObjetivo = (1 + (100 * (0.5))).toInt();
  int _numeroIngresado = 0;

  final InputDecoration _campoEstilo = InputDecoration(
    labelText: 'Introduce aquí un número',
    hintText: 'Intenta adivinar el ganador (Entre 1 y 100)',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario 2"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/fondoFormulario1.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: _formKey,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 173, 217, 255).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CampoCasillaVerificacion(
                        valor: _tienePermisoConducir,
                        onChanged: (bool? value) {
                          setState(() {
                            _tienePermisoConducir = value ?? false;
                          });
                        },
                      ),
                      if (_tienePermisoConducir) ...[
                        CampoSwitch(
                          tieneVehiculo: _tieneVehiculo,
                          onChanged: (bool? value) {
                            setState(() {
                              _tieneVehiculo = value ?? false;
                            });
                          },
                        ),
                        CampoSlider(
                          valor: _anyosPermisoConducir,
                          onChanged: (double value) {
                            setState(() {
                              _anyosPermisoConducir = value;
                            });
                          },
                        ),
                      ],
                      CampoAdivinarNumero(
                        numeroObjetivo: _numeroObjetivo,
                        numeroIngresado: _numeroIngresado,
                        onChanged: (String value) {
                          setState(() {
                            _numeroIngresado = int.tryParse(value) ?? 0;
                          });
                        },
                        onPressed: () {
                          if (!_tienePermisoConducir) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('¡Debes marcar la casilla de permiso de conducir!'),
                              ),
                            );
                          } else if (_numeroIngresado == _numeroObjetivo) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('¡Correcto! Has adivinado el número.')),
                            );
                          } else if (_numeroIngresado < _numeroObjetivo) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('El número es mayor.')),
                            );
                          } else if (_numeroIngresado > _numeroObjetivo) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('El número es menor.')),
                            );
                          }
                        },
                        campoEstilo: _campoEstilo,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
