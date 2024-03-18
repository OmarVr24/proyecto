import 'dart:convert';
import 'package:proyecto/Services/Globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<http.Response> login(String email, String password) async {
    Map<String, String> data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/login'); // Update endpoint URL
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> register(
      String username, String email, String password) async {
    Map<String, String> data = {
      "username": username,
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/register'); // Update endpoint URL
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
