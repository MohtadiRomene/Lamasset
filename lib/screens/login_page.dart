import 'package:flutter/material.dart';
<<<<<<< HEAD
import '../routes.dart';

class LoginPageClient extends StatefulWidget {
  const LoginPageClient({super.key});

  @override
  State<LoginPageClient> createState() => _LoginPageClientState();
}

class _LoginPageClientState extends State<LoginPageClient> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _resetPassword() {
    final email = _emailController.text.trim();
    if (email.isNotEmpty) {
      Navigator.pushNamed(context, AppRoutes.resetPassword, arguments: email);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email address.')),
      );
    }
  }
=======

class UserProfilePage extends StatelessWidget {
  final String userName;
  final String userEmail;

  UserProfilePage({required this.userName, required this.userEmail});
>>>>>>> dc94388 (PFE_PROJECT)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context); // Handle logout or redirect
            },
          ),
        ],
      ),
>>>>>>> dc94388 (PFE_PROJECT)
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF8E1E1), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
<<<<<<< HEAD
                Image.asset('assets/logo.png', height: 150),
                const SizedBox(height: 30),
                const Text('Client Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Mot de passe', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextButton(onPressed: _resetPassword, child: const Text('Mot de passe oublié ?')),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signup); // Fixed: 'signUp' to 'signup'
                  },
                  child: const Text('Pas de compte ? Inscrivez-vous'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.managerLogin);
                  },
                  child: const Text('Connexion Manager', style: TextStyle(color: Colors.blue)),
=======
                // User Profile Picture
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile_picture.png'), // Placeholder profile image
                ),
                const SizedBox(height: 20),

                // User Information
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  userEmail,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.purpleAccent,
                  ),
                ),
                const SizedBox(height: 20),

                // Profile Actions
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Change Password Page
                    Navigator.pushNamed(context, '/changePassword');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text('Change Password'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to User Activity Page
                    Navigator.pushNamed(context, '/userActivity');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text('View Activity'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Settings Page
                    Navigator.pushNamed(context, '/settings');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text('Settings'),
                ),
                const SizedBox(height: 10),

                // Logout Button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Logout logic can be added here
                  },
                  child: const Text('Logout', style: TextStyle(color: Colors.red)),
>>>>>>> dc94388 (PFE_PROJECT)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> dc94388 (PFE_PROJECT)
