import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelpers {
  static const String _baseUrl = 'https://example.com';

  // --Helper method to make Get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // --Helper method to make Post request
  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delete(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> _handleResponse(
    http.Response response,
  ) async {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Request Failed: ${response.statusCode}");
    }
  }
}
