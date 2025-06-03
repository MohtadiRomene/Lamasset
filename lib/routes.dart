import 'package:flutter/material.dart';
<<<<<<< HEAD
import '../screens/onboardingscreen.dart';
import '../screens/login_page_client.dart';
import '../screens/manager_login_page.dart';
import '../screens/sign_up_screen.dart';
import '../screens/reset_password_page.dart';
import '../screens/search_screen.dart'; // Ajout de l'import pour SearchScreen
// Utilisez un préfixe pour éviter l'ambiguïté
import '../screens/visitor_exploration_screen.dart' as visitor;
import '../screens/dashboard_page.dart';
=======
import 'screens/onboardingscreen.dart';
import 'screens/login_page_client.dart';
import 'screens/manager_login_page.dart';
import 'screens/sign_up_screen.dart';
import 'screens/reset_password_page.dart';
import 'screens/search_screen.dart';
import 'screens/profile_screen.dart'; // assure-toi que ce fichier existe
import 'screens/dashboard_page.dart';
import 'screens/admin_login_page.dart';
import 'screens/visitor_exploration_screen.dart' as visitor;
>>>>>>> dc94388 (PFE_PROJECT)

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String loginClient = '/login-client';
  static const String managerLogin = '/manager-login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String dashboard = '/dashboard';
  static const String explore = '/explore';
<<<<<<< HEAD
  static const String search = '/search'; // Ajout de la définition de la route
=======
  static const String search = '/search';
  static const String profile = '/profile';
  static const String adminLogin = '/adminLogin';
>>>>>>> dc94388 (PFE_PROJECT)

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onboarding: (context) => const OnboardingScreen(),
      loginClient: (context) => const LoginPageClient(),
      managerLogin: (context) => const ManagerLoginPage(),
      signup: (context) => const SignUpScreen(),
      resetPassword: (context) => const ResetPasswordPage(),
      dashboard: (context) => const DashboardPage(),
<<<<<<< HEAD
      // Utilisez le préfixe pour éviter l'ambiguïté
      explore: (context) => const visitor.VisitorExplorationScreen(),
      search: (context) => const SearchScreen(), // Ajout de la route de recherche
=======
      explore: (context) => const visitor.VisitorExplorationScreen(),
      search: (context) => const SearchScreen(),
      profile: (context) => const ProfileScreen(),
      adminLogin: (context) => const AdminLoginPage(),
>>>>>>> dc94388 (PFE_PROJECT)
    };
  }
}
