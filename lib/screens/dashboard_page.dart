import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardPage extends StatelessWidget {
  final String? username;
  final String? token;

  const DashboardPage({super.key, this.username, this.token});

  Future<Map<String, dynamic>> _getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');
    final storedToken = prefs.getString('token');
    if (userJson != null) {
      return {
        'username': jsonDecode(userJson)['email'] ?? 'Utilisateur',
        'token': storedToken ?? 'N/A',
      };
    }
    return {'username': 'Utilisateur', 'token': 'N/A'};
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _getUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final displayUsername = username ?? snapshot.data?['username'] ?? 'Utilisateur';
        final displayToken = token ?? snapshot.data?['token'] ?? 'N/A';

        return Scaffold(
          appBar: AppBar(title: const Text('Tableau de bord')),
          body: Center(
            child: Text(
              'Bienvenue, $displayUsername ! Token: $displayToken',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}