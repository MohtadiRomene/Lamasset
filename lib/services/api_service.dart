import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
<<<<<<< HEAD
  static const String baseUrl = 'http://localhost:3001';
=======
  static const String baseUrl = 'http://localhost:3000';
>>>>>>> dc94388 (PFE_PROJECT)
  static String? _token;

  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('token');
  }

  static String? getToken() => _token;

  Future<Map<String, dynamic>> login(String email, String password, {String role = 'client'}) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password, 'role': role}),
      );

      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        _token = data['token'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', data['token']);
        await prefs.setString('user', jsonEncode(data['user']));
        return {'success': true, 'token': data['token'], 'user': data['user']};
      } else {
        return {'success': false, 'message': data['error'] ?? 'Login failed'};
      }
    } catch (e) {
      return {'success': false, 'message': 'Network error: $e'};
    }
  }

  Future<Map<String, dynamic>> loginManager(String email, String password) async {
    return login(email, password, role: 'manager');
  }

  Future<Map<String, dynamic>> loginClient(String email, String password) async {
    return login(email, password, role: 'client');
  }

  Future<Map<String, dynamic>> registerClient({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'name': name,
          'email': email,
          'password': password,
          'phone': phone,
          'role': 'client',
        }),
      );

      final data = jsonDecode(response.body);
      if (response.statusCode == 201) {
        _token = data['token'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', data['token']);
        await prefs.setString('user', jsonEncode(data['user']));
        return {'success': true, 'token': data['token'], 'user': data['user']};
      } else {
        return {'success': false, 'message': data['error'] ?? 'Registration failed'};
      }
    } catch (e) {
      return {'success': false, 'message': 'Network error: $e'};
    }
  }

  Future<Map<String, dynamic>> createBooking({
    required String salonId,
    required String serviceId,
    required String date,
    required String startTime,
    required String endTime,
    required String notes,
<<<<<<< HEAD
=======
    required int userId,  // Added userId parameter here
>>>>>>> dc94388 (PFE_PROJECT)
  }) async {
    final token = _token ?? '';
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/bookings'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'salonId': salonId,
          'serviceId': serviceId,
          'date': date,
          'startTime': startTime,
          'endTime': endTime,
          'notes': notes,
<<<<<<< HEAD
=======
          'userId': userId,  // Include userId in the body
>>>>>>> dc94388 (PFE_PROJECT)
        }),
      );

      final data = jsonDecode(response.body);
      if (response.statusCode == 201) {
        return {'success': true, 'data': data};
      } else {
        return {'success': false, 'message': data['error'] ?? 'Booking failed'};
      }
    } catch (e) {
      return {'success': false, 'message': 'Network error: $e'};
    }
  }

  Future<List<dynamic>> getMyBookings(String userId) async {
    final token = _token ?? '';
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/api/bookings/mybookings'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return data['data'] ?? [];
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}