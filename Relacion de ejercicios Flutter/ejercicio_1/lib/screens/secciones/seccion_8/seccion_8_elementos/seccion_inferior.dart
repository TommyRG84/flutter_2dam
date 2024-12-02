import 'package:flutter/material.dart';

class SeccionInferior extends StatefulWidget {
  const SeccionInferior({super.key});

  @override
  SeccionInferiorState createState() => SeccionInferiorState();
}

class SeccionInferiorState extends State<SeccionInferior> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> galeria1 = [
    "assets/images/01.jpg",
    "assets/images/02.jpg",
    "assets/images/03.jpg",
    "assets/images/04.jpg",
    "assets/images/05.jpg",
    "assets/images/06.jpg",
    "assets/images/07.jpeg",
    "assets/images/08.jpg",
    "assets/images/09.jpeg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
  ];

  final List<String> galeria2 = [
    "assets/images/obey1.jpg",
    "assets/images/obey2.jpg",
    "assets/images/obey3.jpg",
    "assets/images/obey4.jpg",
    "assets/images/obey5.jpg",
    "assets/images/obey6.jpg",
    "assets/images/obey7.jpg",
    "assets/images/obey8.jpeg",
    "assets/images/obey9.jpg",
    "assets/images/obey10.jpg",
    "assets/images/obey11.jpg",
    "assets/images/obey12.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorWeight: 2,
          tabs: const [
            Tab(icon: Icon(Icons.grid_on)),
            Tab(icon: Icon(Icons.assignment_ind)),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                itemCount: galeria1.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) {
                  return contenedorImagen(galeria1[index]);
                },
              ),
              GridView.builder(
                itemCount: galeria2.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) {
                  return contenedorImagen(galeria2[index]);
                },
              ),
            ],
          ),
        ),
      ],
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
