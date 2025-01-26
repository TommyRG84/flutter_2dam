import 'package:flutter/material.dart';
import 'package:prueba/app/api/discogs_api.dart';
import 'package:prueba/app/pages/searchPage/search_page_card.dart';
import 'package:prueba/app/widgets/menu_lateral.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  final DiscogsAPI _discogsAPI = DiscogsAPI();
  List<dynamic> _results = [];
  bool _isLoading = false;
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    final screenDimensions = _getScreenDimensions(context);
    final crossAxisCount = _getCrossAxisCount(screenDimensions['width']!);
    final imageHeight = _getImageHeight(screenDimensions['height']!);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Buscar discos',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          _buildBackgroundImage(),
          _buildContent(imageHeight, crossAxisCount),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Método para realizar la búsqueda
  Future<void> _search() async {
    setState(() => _isLoading = true);
    try {
      final data = await _discogsAPI.search(
        _controller.text,
        page: _currentPage,
        limit: 30,
      );
      if (!mounted) return;
      setState(() {
        _results = data['results'] ?? [];
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
      _showErrorSnackbar(e);
    }
  }

  // Método para mostrar un mensaje de error
  void _showErrorSnackbar(dynamic error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $error')),
    );
  }

  // Método para manejar la navegación a la siguiente página
  void _nextPage() {
    setState(() {
      _currentPage++;
    });
    _search();
  }

  // Método para manejar la navegación a la página anterior
  void _previousPage() {
    if (_currentPage > 1) {
      setState(() {
        _currentPage--;
      });
      _search();
    }
  }

  // Método para obtener las dimensiones de la pantalla
  Map<String, double> _getScreenDimensions(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return {
      'width': screenWidth,
      'height': screenHeight,
    };
  }

  // Método para obtener el número de columnas dependiendo del tamaño de la pantalla
  int _getCrossAxisCount(double screenWidth) {
    return screenWidth > 600 ? 3 : 2;
  }

  // Método para ajustar la altura de las imágenes
  double _getImageHeight(double screenHeight) {
    return screenHeight * 0.16;
  }

  // Método para construir la imagen de fondo
  Widget _buildBackgroundImage() {
    return Positioned.fill(
      child: Image.asset(
        'assets/images/fondo.png',
        fit: BoxFit.cover,
      ),
    );
  }

  // Método para construir el contenido de la página
  Widget _buildContent(double imageHeight, int crossAxisCount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildSearchField(),
          const SizedBox(height: 16),
          _isLoading
              ? const CircularProgressIndicator()
              : _buildGridView(imageHeight, crossAxisCount),
        ],
      ),
    );
  }

  // Método para construir el campo de búsqueda
  Widget _buildSearchField() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        filled: true,
        labelText: 'Buscar artista o álbum',
        labelStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 92, 92, 92),
          ),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: _search,
        ),
      ),
      onSubmitted: (_) => _search(),
    );
  }

  // Método para construir el GridView con los resultados
  Widget _buildGridView(double imageHeight, int crossAxisCount) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.9,
        ),
        itemCount: _results.length,
        itemBuilder: (context, index) {
          return SearchPageCard(
            result: _results[index],
            imageHeight: imageHeight,
          );
        },
      ),
    );
  }

  // Método para construir el BottomAppBar
  Widget? _buildBottomNavigationBar() {
    if (_results.isEmpty) return null;

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: _currentPage > 1 ? _previousPage : null,
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          ),
          Text(
            'Página $_currentPage',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
            onPressed: _nextPage,
            icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
