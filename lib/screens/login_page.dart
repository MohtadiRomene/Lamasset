import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}