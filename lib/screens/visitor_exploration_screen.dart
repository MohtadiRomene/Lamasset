import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:salon_app_frontend/screens/booking_screen.dart';
<<<<<<< HEAD
// Commentez cette ligne si vous n'avez pas encore ajouté Google Fonts à votre pubspec.yaml
// import 'package:google_fonts/google_fonts.dart';

final logger = Logger();

// Définition des couleurs et du thème
=======


final logger = Logger();


>>>>>>> dc94388 (PFE_PROJECT)
const Color primaryColor = Color(0xFF6B4E71);
const Color accentColor = Color(0xFFE57373);
const Color backgroundColor = Color(0xFFFCE4EC); // Rose pâle conservé
const Color cardColor = Colors.white;
const Color textPrimaryColor = Color(0xFF333333);
const Color textSecondaryColor = Color(0xFF757575);

<<<<<<< HEAD
// Définition des styles de texte réutilisables
// Remplacez par ces versions si vous n'avez pas Google Fonts
=======

>>>>>>> dc94388 (PFE_PROJECT)
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

// Décommentez ces styles quand vous aurez ajouté Google Fonts à votre pubspec.yaml
/*
TextStyle get headingStyle => GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: textPrimaryColor,
    );

TextStyle get titleStyle => GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: textPrimaryColor,
    );

TextStyle get subtitleStyle => GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textPrimaryColor,
    );

TextStyle get bodyStyle => GoogleFonts.poppins(
      fontSize: 12,
      color: textSecondaryColor,
    );
*/

<<<<<<< HEAD
// Définition des classes manquantes (placeholders)
=======

>>>>>>> dc94388 (PFE_PROJECT)
class SearchScreen extends StatelessWidget {
  final List<Map<String, String>> recommendedCenters;
  final List<Map<String, String>> newCenters;
  final List<Map<String, String>> trendingCenters;

  const SearchScreen({
    super.key,
    required this.recommendedCenters,
    required this.newCenters,
    required this.trendingCenters,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche'),
        backgroundColor: backgroundColor,
      ),
      body: const Center(
        child: Text('Écran de recherche à implémenter'),
      ),
    );
  }
}

class CenterDetailsScreen extends StatelessWidget {
  final Map<String, String> center;

  const CenterDetailsScreen({
    super.key,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    // Exemples de données statiques pour les tags et services
    final featuredTags = [
      'Nails',
      'Facial',
      'Lash extensions',
    ];
    final services = [
      {
        'name': 'Gel Manicure',
        'duration': '1hr - 1hr 45min',
      },
      {
        'name': 'Hydrating Facial',
        'duration': '1hr',
      },
      {
        'name': 'Classic Lash Extensions',
        'duration': '2hr',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(center['name'] ?? 'Détails du centre'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: Image.asset(
              center['image'] ?? '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 100, color: Colors.grey),
            ),
          ),
          Container(
            color: Colors.pink[50],
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  center['name'] ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      '${center['rating'] ?? ''} (${center['reviewCount'] ?? ''} reviews)',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  center['location'] ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  center['hours'] ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 24),
                Text(
                  'Featured',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: featuredTags
                      .map((tag) => Chip(
                            label: Text(tag),
                            backgroundColor: Colors.grey[100],
                          ))
                      .toList(),
                ),
                const SizedBox(height: 24),
                Text(
                  'Services',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...services.map((service) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                service['name']!,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                service['duration']!,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const BookingScreen(),
                                ),
                              );
                            },
                            child: const Text('Book now'),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const BookingScreen(),
                        ),
                      );
                    },
                    child: const Text('Book now'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryDetailsScreen extends StatelessWidget {
  final Map<String, String> category;
  final List<Map<String, String>> recommendedCenters;
  final List<Map<String, String>> newCenters;
  final List<Map<String, String>> trendingCenters;

  const CategoryDetailsScreen({
    super.key,
    required this.category,
    required this.recommendedCenters,
    required this.newCenters,
    required this.trendingCenters,
  });

  @override
  Widget build(BuildContext context) {
    // On regroupe tous les centres
    final allCenters = [
      ...recommendedCenters,
      ...newCenters,
      ...trendingCenters,
    ];
    // On filtre selon la catégorie sélectionnée
    final filteredCenters = allCenters.where((center) =>
      center['category'] == category['name']
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category['name'] ?? 'Détails de la catégorie'),
        backgroundColor: backgroundColor,
      ),
      body: filteredCenters.isEmpty
        ? const Center(
            child: Text(
              'Aucun centre trouvé pour cette catégorie.',
              style: TextStyle(color: Colors.grey),
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: filteredCenters.length,
            itemBuilder: (context, index) {
              final center = filteredCenters[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CenterDetailsScreen(center: center),
                    ),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        child: Image.asset(
                          center['image'] ?? '',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image, size: 40, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              center['name'] ?? '',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              center['location'] ?? '',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  '${center['rating'] ?? ''} (${center['reviewCount'] ?? ''} avis)',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
    );
  }
}

class VisitorExplorationScreen extends StatefulWidget {
  const VisitorExplorationScreen({super.key});

  @override
  VisitorExplorationScreenState createState() => VisitorExplorationScreenState();
}

class VisitorExplorationScreenState extends State<VisitorExplorationScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final bool _isAuthenticated = false; // Simulate authentication state
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final List<Map<String, String>> recommendedCenters = const [
    {
      'name': 'Spa Dar El Jeld',
      'location': 'Médina de Tunis',
      'latitude': '36.7995',
      'longitude': '10.1710',
      'image': 'assets/spa_dar_el_jeld.jpg',
      'rating': '5.0',
      'reviewCount': '83',
      'hours': 'Ouvre le Mercredi à 10:00',
      'category': 'Massage',
    },
    {
      'name': 'Les Thermes Marins de Carthage',
      'location': 'Gammarth',
      'latitude': '36.9011',
      'longitude': '10.2750',
      'image': 'assets/themes_marins_carthage.jpg',
      'rating': '4.8',
      'reviewCount': '65',
      'hours': 'Ouvre le Mercredi à 9:00',
      'category': 'Spas & Thalassothérapie',
    },
    {
      'name': 'Fedra Beautyland',
      'location': 'La Marsa',
      'latitude': '36.8797',
      'longitude': '10.3167',
      'image': 'assets/fedra_beautyland.jpg',
      'rating': '4.9',
      'reviewCount': '92',
      'hours': 'Ouvre le Mercredi à 11:00',
      'category': 'Instituts de beauté',
    },
  ];

  final List<Map<String, String>> newCenters = const [
    {
      'name': 'Roland Salon Saussure',
      'location': 'Tunis',
      'latitude': '36.8065',
      'longitude': '10.1815',
      'image': 'assets/roland_salon.jpg',
      'rating': '4.7',
      'reviewCount': '45',
      'hours': 'Ouvre le Mercredi à 10:00',
      'category': 'Coiffure & styling',
    },
    {
      'name': 'Jin Head Spa',
      'location': 'Sousse',
      'latitude': '35.8257',
      'longitude': '10.6370',
      'image': 'assets/roland_salon.jpg',
      'rating': '4.6',
      'reviewCount': '38',
      'hours': 'Ouvre le Mercredi à 9:30',
      'category': 'Massage',
    },
  ];

  final List<Map<String, String>> trendingCenters = const [
    {
      'name': 'Hasdrubal Thalassa & Spa',
      'location': 'Yasmine Hammamet',
      'latitude': '36.3910',
      'longitude': '10.5667',
      'image': 'assets/hasdrubal_thalassa.jpg',
      'rating': '5.0',
      'reviewCount': '120',
      'hours': 'Ouvre le Mercredi à 8:00',
      'category': 'Spas & Thalassothérapie',
    },
    {
      'name': 'Algotherm Alkantara Thalassa',
      'location': 'Djerba',
      'latitude': '33.8110',
      'longitude': '10.8450',
      'image': 'assets/algotherm_alkantara.jpg',
      'rating': '4.9',
      'reviewCount': '95',
      'hours': 'Ouvre le Mercredi à 9:00',
      'category': 'Spas & Thalassothérapie',
    },
  ];

  final List<Map<String, String>> categories = const [
    {'name': 'Coiffure & styling', 'image': 'assets/categories/hair_styling.jpg'},
    {'name': 'Ongles', 'image': 'assets/categories/nails.jpg'},
    {'name': 'Sourcils & cils', 'image': 'assets/categories/eyebrows_and_eyeslashes.jpg'},
    {'name': 'Massage', 'image': 'assets/categories/massage.jpg'},
    {'name': 'Barbering', 'image': 'assets/categories/barbering.jpg'},
    {'name': 'Épilation', 'image': 'assets/categories/hair_removal.jpg'},
    {'name': 'Soins du visage & peau', 'image': 'assets/categories/facials_and_skincare.jpg'},
    {'name': 'Injectables & fillers', 'image': 'assets/categories/injectables_and_fillers.jpg'},
    {'name': 'Corps', 'image': 'assets/categories/body.jpg'},
    {'name': 'Maquillage', 'image': 'assets/categories/makeup.jpg'},
    {'name': 'Médical & dentaire', 'image': 'assets/categories/medical_and_dental.jpg'},
    {'name': 'Fitness', 'image': 'assets/categories/fitness.jpg'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => SearchScreen(
            recommendedCenters: recommendedCenters,
            newCenters: newCenters,
            trendingCenters: trendingCenters,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    } else if (index == 2) {
      if (!_isAuthenticated) {
        _showLoginDialog(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Fonctionnalité de rendez-vous bientôt disponible !'),
            backgroundColor: primaryColor,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      }
    }
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Connexion requise', style: titleStyle),
        content: Text('Veuillez vous connecter ou vous inscrire pour réserver des rendez-vous.', style: bodyStyle),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/login-client');
            },
            style: TextButton.styleFrom(
              foregroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Se connecter'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/signup');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('S\'inscrire'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // Fond rose pâle
      appBar: AppBar(
        title: const Text(
          'Explorer les centres de beauté en Tunisie',
          style: TextStyle(
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          // Décommentez cette ligne quand vous aurez ajouté Google Fonts
          // style: GoogleFonts.poppins(
          //   color: textPrimaryColor,
          //   fontWeight: FontWeight.bold,
          //   fontSize: 18,
          // ),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryColor),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Notifications bientôt disponibles !'),
                  backgroundColor: primaryColor,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: RefreshIndicator(
          color: primaryColor,
          backgroundColor: Colors.white,
          onRefresh: () async {
            // Simuler un rafraîchissement
            await Future.delayed(const Duration(seconds: 1));
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBar(),
                _buildSectionHeader('Tendance'),
                _buildVerticalList(context, trendingCenters),
                _buildSectionHeader('Recommandé'),
                _buildHorizontalList(context, recommendedCenters),
                _buildSectionHeader('Nouveau en Tunisie'),
                _buildHorizontalList(context, newCenters),
                _buildSectionHeader('Catégories'),
                _buildCategoryGrid(context, categories),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: 'Recherche',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              activeIcon: Icon(Icons.calendar_today),
              label: 'Rendez-vous',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          // Décommentez ces lignes quand vous aurez ajouté Google Fonts
          // selectedLabelStyle: GoogleFonts.poppins(
          //   fontSize: 12,
          //   fontWeight: FontWeight.w500,
          // ),
          // unselectedLabelStyle: GoogleFonts.poppins(
          //   fontSize: 12,
          // ),
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => SearchScreen(
                recommendedCenters: recommendedCenters,
                newCenters: newCenters,
                trendingCenters: trendingCenters,
              ),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.easeInOutCubic;
                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);
                return SlideTransition(position: offsetAnimation, child: child);
              },
              transitionDuration: const Duration(milliseconds: 500),
            ),
          );
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(13),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Rechercher un salon, un service...',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                  // style: GoogleFonts.poppins(
                  //   color: Colors.grey,
                  //   fontSize: 14,
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: headingStyle,
          ),
          TextButton(
            onPressed: () {
              // Navigation vers la vue complète de cette section
            },
            style: TextButton.styleFrom(
              foregroundColor: primaryColor,
              padding: EdgeInsets.zero,
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Voir tout',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              // Décommentez cette ligne quand vous aurez ajouté Google Fonts
              // style: GoogleFonts.poppins(
              //   fontSize: 14,
              //   fontWeight: FontWeight.w500,
              // ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(BuildContext context, List<Map<String, String>> items) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => CenterDetailsScreen(center: item),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOutCubic;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(position: offsetAnimation, child: child);
                  },
                  transitionDuration: const Duration(milliseconds: 500),
                ),
              );
            },
            child: Container(
              width: 200,
              margin: const EdgeInsets.only(right: 16.0, bottom: 8.0),
              child: Card(
                elevation: 4,
                shadowColor: Colors.black.withAlpha(31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: Image.asset(
                            item['image']!,
                            height: 110,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              logger.e('Échec du chargement de l\'image: ${item['image']}');
                              return Container(
                                height: 110,
                                color: Colors.grey[300],
                                child: const Center(child: Icon(Icons.image_not_supported, color: Colors.grey)),
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                                  // style: GoogleFonts.poppins(
                                  //   fontSize: 12,
                                  //   fontWeight: FontWeight.bold,
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item['name']!,
                              style: subtitleStyle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 14, color: Colors.grey[600]),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    item['location']!,
                                    style: bodyStyle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            if (item.containsKey('category'))
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  item['category']!,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                                  // style: GoogleFonts.poppins(
                                  //   fontSize: 10,
                                  //   color: primaryColor,
                                  //   fontWeight: FontWeight.w500,
                                  // ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildVerticalList(BuildContext context, List<Map<String, String>> items) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => CenterDetailsScreen(center: item),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOutCubic;
                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(position: offsetAnimation, child: child);
                },
                transitionDuration: const Duration(milliseconds: 500),
              ),
            );
          },
          child: Card(
            elevation: 4,
            shadowColor: Colors.black.withAlpha(31),
            margin: const EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: cardColor,
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      child: Image.asset(
                        item['image']!,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          logger.e('Échec du chargement de l\'image: ${item['image']}');
                          return Container(
                            width: 120,
                            height: 120,
                            color: Colors.grey[300],
                            child: const Center(child: Icon(Icons.image_not_supported, color: Colors.grey)),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 2),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                              // style: GoogleFonts.poppins(
                              //   fontSize: 12,
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name']!,
                          style: titleStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 14, color: Colors.grey[600]),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                item['location']!,
                                style: bodyStyle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (item.containsKey('category'))
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              item['category']!,
                              style: const TextStyle(
                                fontSize: 10,
                                color: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                              // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                              // style: GoogleFonts.poppins(
                              //   fontSize: 10,
                              //   color: primaryColor,
                              //   fontWeight: FontWeight.w500,
                              // ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        const SizedBox(height: 6),
                        if (item.containsKey('hours'))
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  item['hours']!,
                                  style: bodyStyle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCategoryGrid(BuildContext context, List<Map<String, String>> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => CategoryDetailsScreen(
                  category: item,
                  recommendedCenters: recommendedCenters,
                  newCenters: newCenters,
                  trendingCenters: trendingCenters,
                ),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOutCubic;
                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(position: offsetAnimation, child: child);
                },
                transitionDuration: const Duration(milliseconds: 500),
              ),
            );
          },
          child: Card(
            elevation: 3,
            shadowColor: Colors.black.withAlpha(31),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: cardColor,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    item['image']!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      logger.e('Échec du chargement de l\'image: ${item['image']}');
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(child: Icon(Icons.image_not_supported, color: Colors.grey)),
                      );
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withAlpha(179),
                      ],
                      stops: const [0.6, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 12,
                  right: 12,
                  child: Text(
                    item['name']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    // Décommentez cette ligne quand vous aurez ajouté Google Fonts
                    // style: GoogleFonts.poppins(
                    //   fontSize: 14,
                    //   fontWeight: FontWeight.bold,
                    //   color: Colors.white,
                    // ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
