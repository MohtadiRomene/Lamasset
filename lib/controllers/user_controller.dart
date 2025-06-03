import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart' as html;
import '../models/logged_in_user.dart';

class UserController {
  final String _baseUrl = 'http://localhost:3000/api';

  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // Parse user data
        final user = LoggedInUser.fromJson(data['user']);

        // Extract cookies from headers and set them manually in Flutter Web
        final rawCookies = response.headers['set-cookie'];
        if (rawCookies != null) {
          // Cookies may be separated by commas, split and set each one
          for (var cookie in rawCookies.split(',')) {
            final cookiePart = cookie.split(';')[0].trim();
            html.document.cookie = cookiePart;
          }
        }


        return {
          'success': true,
          'user': user,
          
        };
      } else {
        final data = jsonDecode(response.body);
        return {
          'success': false,
          'message': data['message'] ?? 'Email ou mot de passe incorrect',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Erreur de connexion au serveur',
      };
    }
  }
}

/*import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/logged_in_user.dart';

class UserController {
  final String _baseUrl = 'http://localhost:3000/api';

  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final user = LoggedInUser.fromJson(data);
        return {'success': true, 'user': user};
      } else {
        final data = jsonDecode(response.body);
        return {
          'success': false,
          'message': data['message'] ?? 'Email ou mot de passe incorrect',
        };
      }
    } catch (e) {
      return {'success': false, 'message': 'Erreur de connexion au serveur'};
    }
  }
}
*/