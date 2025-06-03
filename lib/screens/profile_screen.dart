// profile_screen.dart
import 'package:flutter/material.dart';
import '../models/logged_in_user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final LoggedInUser user = args['user'];
    final String? jwt = args['jwt'];
    final String? cookies = args['cookies'];

    return Scaffold(
      appBar: AppBar(title: const Text("Profil")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bienvenue, ${user.email}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            if (jwt != null) Text("JWT: $jwt", style: const TextStyle(fontSize: 14)),
            if (cookies != null) Text("Cookies: $cookies", style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import '../models/logged_in_user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as LoggedInUser;

    return Scaffold(
      appBar: AppBar(title: const Text("Profil")),
      body: Center(
        child: Text("Bienvenue, ${user.email}", style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}*/
