import 'package:flutter/material.dart';
import '../screens/onboardingscreen.dart';
import '../screens/login_page_client.dart';
import '../screens/manager_login_page.dart';
import '../screens/sign_up_screen.dart';
import '../screens/reset_password_page.dart';
import '../screens/search_screen.dart'; // Ajout de l'import pour SearchScreen
// Utilisez un préfixe pour éviter l'ambiguïté
import '../screens/visitor_exploration_screen.dart' as visitor;
import '../screens/dashboard_page.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String loginClient = '/login-client';
  static const String managerLogin = '/manager-login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String dashboard = '/dashboard';
  static const String explore = '/explore';
  static const String search = '/search'; // Ajout de la définition de la route

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onboarding: (context) => const OnboardingScreen(),
      loginClient: (context) => const LoginPageClient(),
      managerLogin: (context) => const ManagerLoginPage(),
      signup: (context) => const SignUpScreen(),
      resetPassword: (context) => const ResetPasswordPage(),
      dashboard: (context) => const DashboardPage(),
      // Utilisez le préfixe pour éviter l'ambiguïté
      explore: (context) => const visitor.VisitorExplorationScreen(),
      search: (context) => const SearchScreen(), // Ajout de la route de recherche
    };
  }
}
