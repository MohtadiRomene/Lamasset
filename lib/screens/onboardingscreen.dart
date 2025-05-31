import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../routes.dart';
import '../constants/strings.dart';
import '../constants/colors.dart';

final logger = Logger();

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Log to check if the widget is initialized correctly
    logger.i('OnboardingScreen initialized');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientStart, AppColors.gradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      _buildPage(
                        image: 'assets/logo.png',
                        title: AppStrings.onboardingWelcomeTitle,
                        description: AppStrings.onboardingWelcomeDesc,
                        icon: Icons.calendar_today,
                      ),
                      _buildPage(
                        image: 'assets/logo.png',
                        title: AppStrings.onboardingBenefitsTitle,
                        description: AppStrings.onboardingBenefitsDesc,
                        icon: Icons.face,
                      ),
                      _buildPage(
                        image: 'assets/logo.png',
                        title: AppStrings.onboardingStartTitle,
                        description: AppStrings.onboardingStartDesc,
                        icon: Icons.arrow_back, // Using arrow_back as a placeholder
                        showButtons: true,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => _buildDot(index)),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.explore);
                },
                child: Text(
                  'Passer',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({
    required String image,
    required String title,
    required String description,
    required IconData icon,
    bool showButtons = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 200,
            width: 200,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              logger.e('Failed to load image: $image, Error: $error, StackTrace: $stackTrace');
              return const FlutterLogo(size: 200); // Fallback to Flutter logo if asset fails
            },
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
          ),
          const SizedBox(height: 20),
          Icon(
            icon,
            size: 50,
            color: AppColors.primaryPurple,
          ),
          if (showButtons) ...[
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.loginClient);
              },
              child: const Text('Connexion'),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.managerLogin);
              },
              icon: const Icon(Icons.lock),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Connexion Manager'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.managerLogin);
              },
              icon: const Icon(Icons.admin_panel_settings),
              label: const Text('Connexion Admin'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signup);
              },
              child: const Text('Inscription'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Connexion avec Google/Apple bientôt disponible')),
                );
              },
              child: Text(
                'Connexion avec Google/Apple',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: _currentPage == index ? 12 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? AppColors.primaryPurple : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}