import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:logger/logger.dart';

final logger = Logger();

// Définition des couleurs et du thème
const Color primaryColor = Color(0xFF6B4E71);
const Color accentColor = Color(0xFFE57373);
const Color backgroundColor = Color(0xFFFCE4EC); // Rose pâle conservé
=======
import '../controllers/auth_controller.dart';
import '../models/user_model.dart';

const Color primaryColor = Color(0xFF6B4E71);
const Color accentColor = Color(0xFFE57373);
const Color backgroundColor = Color(0xFFFCE4EC);
>>>>>>> dc94388 (PFE_PROJECT)
const Color cardColor = Colors.white;
const Color textPrimaryColor = Color(0xFF333333);
const Color textSecondaryColor = Color(0xFF757575);

<<<<<<< HEAD
// Définition des styles de texte réutilisables
TextStyle get headingStyle => const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: textPrimaryColor,
    );

TextStyle get titleStyle => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: textPrimaryColor,
    );

TextStyle get subtitleStyle => const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textPrimaryColor,
    );

TextStyle get bodyStyle => const TextStyle(
      fontSize: 12,
      color: textSecondaryColor,
    );

// Ajout de la classe SignUpScreen
=======
>>>>>>> dc94388 (PFE_PROJECT)
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _acceptConditions = false;

<<<<<<< HEAD
=======
  final _firstNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final AuthController _authController = AuthController();

>>>>>>> dc94388 (PFE_PROJECT)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
<<<<<<< HEAD
                Image.asset(
                  'assets/logo.png',
                  height: 60,
                ),
=======
                Image.asset('assets/logo.png', height: 60),
>>>>>>> dc94388 (PFE_PROJECT)
                const SizedBox(height: 30),
                const Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 30),
<<<<<<< HEAD
                TextFormField(
=======

                // Champ : Nom
                TextFormField(
                  controller: _firstNameController,
>>>>>>> dc94388 (PFE_PROJECT)
                  decoration: const InputDecoration(
                    labelText: 'Nom',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: cardColor,
                  ),
<<<<<<< HEAD
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
=======
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Entrez votre nom' : null,
                ),
                const SizedBox(height: 15),

                
                TextFormField(
                  controller: _emailController,
>>>>>>> dc94388 (PFE_PROJECT)
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: cardColor,
                  ),
<<<<<<< HEAD
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
=======
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Entrez votre email' : null,
                ),
                const SizedBox(height: 15),

                
                TextFormField(
                  controller: _phoneController,
>>>>>>> dc94388 (PFE_PROJECT)
                  decoration: const InputDecoration(
                    labelText: 'Numéro de téléphone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: cardColor,
                  ),
<<<<<<< HEAD
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre numéro de téléphone';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
=======
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Entrez votre numéro' : null,
                ),
                const SizedBox(height: 15),

                
                TextFormField(
                  controller: _passwordController,
>>>>>>> dc94388 (PFE_PROJECT)
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: cardColor,
                  ),
<<<<<<< HEAD
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un mot de passe';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
=======
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Entrez un mot de passe' : null,
                ),
                const SizedBox(height: 15),

                
                TextFormField(
                  controller: _confirmPasswordController,
>>>>>>> dc94388 (PFE_PROJECT)
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirmer mot de passe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: cardColor,
                  ),
<<<<<<< HEAD
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez confirmer votre mot de passe';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
=======
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Confirmez le mot de passe' : null,
                ),
                const SizedBox(height: 20),

                
>>>>>>> dc94388 (PFE_PROJECT)
                Row(
                  children: [
                    Checkbox(
                      value: _acceptConditions,
                      onChanged: (value) {
                        setState(() {
                          _acceptConditions = value ?? false;
                        });
                      },
                      activeColor: primaryColor,
                    ),
<<<<<<< HEAD
                    const Text(
                      "J'accepte les conditions",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
=======
                    const Text("J'accepte les conditions",
                        style: TextStyle(color: primaryColor)),
                  ],
                ),
                const SizedBox(height: 30),

                
>>>>>>> dc94388 (PFE_PROJECT)
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
<<<<<<< HEAD
                    onPressed: () {
                      if (_formKey.currentState!.validate() && _acceptConditions) {
                        // Traitement de l'inscription
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inscription en cours...')),
                        );
=======
                    onPressed: () async {
                      if (_formKey.currentState!.validate() && _acceptConditions) {
                        final user = UserModel(
                          firstName: _firstNameController.text,
                          email: _emailController.text,
                          phoneNumber: _phoneController.text,
                          password: _passwordController.text,
                          confirmPassword: _confirmPasswordController.text,
                        );

                        final result = await _authController.register(user);
if (result == null) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Inscription réussie')),
  );

  
  Future.delayed(const Duration(seconds: 1), () {
    Navigator.pushReplacementNamed(context, '/login-client');
  });

                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(result)),
                          );
                        }
>>>>>>> dc94388 (PFE_PROJECT)
                      } else if (!_acceptConditions) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Veuillez accepter les conditions')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
