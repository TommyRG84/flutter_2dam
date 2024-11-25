import 'package:ejercicio_1/screens/drawer/menu_lateral.dart';
import 'package:flutter/material.dart';

class Seccion4 extends StatelessWidget {
  const Seccion4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sección 4"),
      ),
      drawer: const MenuLateral(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/androidBG.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.adb,
                    color: Colors.teal,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.adb,
                    color: Color.fromARGB(255, 0, 107, 150),
                  ),
                  Icon(
                    Icons.adb,
                    color: Color.fromARGB(255, 0, 62, 150),
                  ),
                  Icon(
                    Icons.adb,
                    color: Color.fromARGB(255, 0, 22, 150),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Color.fromARGB(255, 12, 0, 150),
                  ),
                  Icon(
                    Icons.ac_unit_outlined,
                    color: Color.fromARGB(255, 67, 0, 150),
                  ),
                  Icon(
                    Icons.accessible_sharp,
                    color: Color.fromARGB(255, 120, 0, 150),
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    color: Color.fromARGB(255, 150, 0, 137),
                  ),
                  Icon(
                    Icons.account_tree_rounded,
                    color: Color.fromARGB(255, 150, 0, 85),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.adb_rounded,
                    color: Color.fromARGB(255, 150, 0, 45),
                  ),
                  Icon(
                    Icons.adb,
                    color: Color.fromARGB(255, 150, 0, 0),
                  ),
                  Icon(
                    Icons.add_moderator,
                    color: Color.fromARGB(255, 150, 25, 0),
                  ),
                  Icon(
                    Icons.yard_rounded,
                    color: Color.fromARGB(255, 150, 80, 0),
                  ),
                  Icon(
                    Icons.workspace_premium,
                    color: Color.fromARGB(255, 150, 132, 0),
                  ),
                  Icon(
                    Icons.access_time_filled_rounded,
                    color: Color.fromARGB(255, 95, 150, 0),
                  ),
                  Icon(
                    Icons.woman_rounded,
                    color: Color.fromARGB(255, 17, 150, 0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
