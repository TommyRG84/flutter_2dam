import 'dart:convert';
import 'package:http/http.dart' as http;

class DiscogsAPI {
  static const String baseUrl = "https://api.discogs.com";
  static const String consumerKey = "eCqmihLbePOSNTphmPVY";
  static const String consumerSecret = "QmiKeklGUTJmcoDsvvLTWOoANYIwvBav";

  /// Realiza una búsqueda de artistas o álbumes
  Future<Map<String, dynamic>> search(String query, {int limit = 10, int page = 1}) async {
    final url = Uri.parse(
      '$baseUrl/database/search?q=$query&per_page=$limit&page=$page&key=$consumerKey&secret=$consumerSecret&type=master',
    );

    try {
      final response = await http.get(url).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception("Tiempo de espera excedido al contactar con la API.");
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 401) {
        throw Exception("Error de autenticación: Verifica tus credenciales de API.");
      } else if (response.statusCode == 404) {
        throw Exception("Recurso no encontrado: La URL solicitada no existe.");
      } else {
        throw Exception("Error desconocido: ${response.statusCode} - ${response.reasonPhrase}");
      }
    } catch (e) {
      throw Exception("Error durante la comunicación con la API: $e");
    }
  }
}
