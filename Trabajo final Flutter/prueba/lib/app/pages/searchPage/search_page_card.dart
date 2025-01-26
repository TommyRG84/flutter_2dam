import 'package:flutter/material.dart';

class SearchPageCard extends StatelessWidget {
  final dynamic result;
  final double imageHeight;

  const SearchPageCard({super.key, required this.result, required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    String albumTitle = _getAlbumTitle();
    String artist = _getArtistName();

    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * 0.45;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Column(
        children: [
          _buildImage(imageWidth),
          const SizedBox(height: 8),
          _buildText(albumTitle, artist),
        ],
      ),
    );
  }

  // Método para obtener el título del álbum
  String _getAlbumTitle() {
    if (result['title'] != null && result['title'].contains(' - ')) {
      var parts = result['title'].split(' - ');
      return parts[1];
    } else {
      return result['title'] ?? 'Sin título';
    }
  }

  // Método para obtener el nombre del artista
  String _getArtistName() {
    if (result['title'] != null && result['title'].contains(' - ')) {
      var parts = result['title'].split(' - ');
      return parts[0];
    } else {
      return 'Desconocido';
    }
  }

  // Método para construir la imagen
  Widget _buildImage(double imageWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: imageWidth,
        height: imageHeight,
        child: result['thumb'] != null
            ? Image.network(
                result['thumb'],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/portada.png',
                    fit: BoxFit.cover,
                  );
                },
              )
            : Image.asset(
                'assets/images/portada.png',
                fit: BoxFit.cover,
              ),
      ),
    );
  }

  // Método para construir el texto con el título del álbum y el artista
  Widget _buildText(String albumTitle, String artist) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Column(
        children: [
          Text(
            albumTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            artist,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
