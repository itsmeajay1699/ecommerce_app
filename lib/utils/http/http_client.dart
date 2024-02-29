import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'https://api.themoviedb.org/3/';

  static Future<Map<String, dynamic>> get(String url) async {
    final response = await http.get(Uri.parse(_baseUrl + url));
    return _handleResponse(response);
  }

  // helper method to post call

  static Future<Map<String, dynamic>> post(
      String url, Map<String, dynamic> data) async {
    final response =
        await http.post(Uri.parse(_baseUrl + url), body: json.encode(data));
    return _handleResponse(response);
  }

  // helper method to make a put call

  static Future<Map<String, dynamic>> put(
      String url, Map<String, dynamic> data) async {
    final response =
        await http.put(Uri.parse(_baseUrl + url), body: json.encode(data));
    return _handleResponse(response);
  }

  // helper method to make a delete call

  static Future<Map<String, dynamic>> delete(String url) async {
    final response = await http.delete(Uri.parse(_baseUrl + url));
    return _handleResponse(response);
  }

  // helper method to handle response

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode < 200 || response.statusCode > 400) {
      throw Exception('Error: ${response.reasonPhrase}');
    }
    return json.decode(response.body);
  }
}
