import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class AuthController {
  Future<String?> register(UserModel user) async {
    final url = Uri.parse('http://localhost:3000/api/register');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json','Access-Control-Allow-Origin': '*'},
        body: jsonEncode(user.toJson()),
      );

      if (response.statusCode == 201) { 
        return null; // Succès
      } else {
        final data = jsonDecode(response.body);
        return data['message'] ?? 'Erreur inconnue';
      }
    } catch (e) {
      return "Erreur de connexion au serveur";
    }
  }
}
