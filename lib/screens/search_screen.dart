import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger();

// Définition des couleurs et du thème
const Color primaryColor = Color(0xFF6B4E71);
const Color accentColor = Color(0xFFE57373);
const Color backgroundColor = Color(0xFFFCE4EC); // Rose pâle conservé
const Color cardColor = Colors.white;
const Color textPrimaryColor = Color(0xFF333333);
const Color textSecondaryColor = Color(0xFF757575);

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1; // Index 1 pour l'onglet recherche
  final bool _isAuthenticated = false; // Simuler l'état d'authentification
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  
  // Variables pour la recherche
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  bool _isSearchActive = false;
  String _searchQuery = '';
  
  // Variables pour les résultats filtrés
  List<Map<String, String>> _filteredRecommendedCenters = [];
  List<Map<String, String>> _filteredNewCenters = [];
  List<Map<String, String>> _filteredTrendingCenters = [];
  int _totalResults = 0;

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
    
    // Initialiser les listes filtrées avec toutes les données
    _filteredRecommendedCenters = List.from(recommendedCenters);
    _filteredNewCenters = List.from(newCenters);
    _filteredTrendingCenters = List.from(trendingCenters);
    _updateTotalResults();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  // Données des centres
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

  // Méthode pour filtrer les centres en fonction de la recherche
  void _performSearch(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      
      // Filtrer les centres recommandés
      _filteredRecommendedCenters.clear();
      _filteredRecommendedCenters.addAll(recommendedCenters.where((center) {
        final name = center['name']?.toLowerCase() ?? '';
        final location = center['location']?.toLowerCase() ?? '';
        final category = center['category']?.toLowerCase() ?? '';
        
        return name.contains(_searchQuery) || 
               location.contains(_searchQuery) || 
               category.contains(_searchQuery);
      }));
      
      // Filtrer les nouveaux centres
      _filteredNewCenters.clear();
      _filteredNewCenters.addAll(newCenters.where((center) {
        final name = center['name']?.toLowerCase() ?? '';
        final location = center['location']?.toLowerCase() ?? '';
        final category = center['category']?.toLowerCase() ?? '';
        
        return name.contains(_searchQuery) || 
               location.contains(_searchQuery) || 
               category.contains(_searchQuery);
      }));
      
      // Filtrer les centres tendance
      _filteredTrendingCenters.clear();
      _filteredTrendingCenters.addAll(trendingCenters.where((center) {
        final name = center['name']?.toLowerCase() ?? '';
        final location = center['location']?.toLowerCase() ?? '';
        final category = center['category']?.toLowerCase() ?? '';
        
        return name.contains(_searchQuery) || 
               location.contains(_searchQuery) || 
               category.contains(_searchQuery);
      }));
      
      _updateTotalResults();
    });
  }
  
  // Mettre à jour le nombre total de résultats
  void _updateTotalResults() {
    _totalResults = _filteredRecommendedCenters.length + 
                    _filteredNewCenters.length + 
                    _filteredTrendingCenters.length;
  }
  
  // Réinitialiser la recherche
  void _resetSearch() {
    setState(() {
      _searchQuery = '';
      _searchController.clear();
      _isSearchActive = false;
      
      _filteredRecommendedCenters.clear();
      _filteredRecommendedCenters.addAll(recommendedCenters);
      
      _filteredNewCenters.clear();
      _filteredNewCenters.addAll(newCenters);
      
      _filteredTrendingCenters.clear();
      _filteredTrendingCenters.addAll(trendingCenters);
      
      _updateTotalResults();
      FocusScope.of(context).unfocus();
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 2) {
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
    } else if (index == 0) {
      // Naviguer vers l'accueil
      Navigator.pushNamed(context, '/');
    }
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Connexion requise',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textPrimaryColor,
          ),
        ),
        content: const Text(
          'Veuillez vous connecter ou vous inscrire pour réserver des rendez-vous.',
          style: TextStyle(
            fontSize: 12,
            color: textSecondaryColor,
          ),
        ),
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
          'Recherche',
          style: TextStyle(
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryColor),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: RefreshIndicator(
          color: primaryColor,
          backgroundColor: Colors.white,
          onRefresh: () async {
            // Simuler un rafraîchissement
            await Future.delayed(const Duration(seconds: 1));
            _resetSearch();
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBar(),
                if (_searchQuery.isNotEmpty) _buildSearchResults(),
                if (_searchQuery.isEmpty || _filteredTrendingCenters.isNotEmpty) 
                  _buildSectionHeader('Tendance'),
                if (_searchQuery.isEmpty || _filteredTrendingCenters.isNotEmpty) 
                  _buildVerticalList(context, _filteredTrendingCenters),
                if (_searchQuery.isEmpty || _filteredRecommendedCenters.isNotEmpty) 
                  _buildSectionHeader('Recommandé'),
                if (_searchQuery.isEmpty || _filteredRecommendedCenters.isNotEmpty) 
                  _buildHorizontalList(context, _filteredRecommendedCenters),
                if (_searchQuery.isEmpty || _filteredNewCenters.isNotEmpty) 
                  _buildSectionHeader('Nouveau en Tunisie'),
                if (_searchQuery.isEmpty || _filteredNewCenters.isNotEmpty) 
                  _buildHorizontalList(context, _filteredNewCenters),
                if (_searchQuery.isEmpty) 
                  _buildSectionHeader('Catégories'),
                if (_searchQuery.isEmpty) 
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

  // Widget pour afficher le nombre de résultats de recherche
  Widget _buildSearchResults() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        '$_totalResults résultat${_totalResults > 1 ? 's' : ''} trouvé${_totalResults > 1 ? 's' : ''}',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textPrimaryColor,
        ),
      ),
    );
  }

  // Widget pour la barre de recherche interactive
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSearchActive = true;
          });
          _searchFocusNode.requestFocus();
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(13), // 0.05 * 255 = 13
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: _isSearchActive
              ? TextField(
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Rechercher un salon, un service...',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear, color: Colors.grey),
                            onPressed: _resetSearch,
                          )
                        : null,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                  ),
                  onChanged: _performSearch,
                )
              : const Row(
                  children: [
                    SizedBox(width: 16),
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 12),
                    Text(
                      'Rechercher un salon, un service...',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
        ),
      ),
    );
  }

  // Widget pour les en-têtes de section
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textPrimaryColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              // Action pour voir tout
            },
            child: const Text(
              'Voir tout',
              style: TextStyle(
                fontSize: 12,
                color: primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget pour les listes horizontales
  Widget _buildHorizontalList(BuildContext context, List<Map<String, String>> centers) {
    if (centers.isEmpty) {
      return const SizedBox(
        height: 220,
        child: Center(
          child: Text(
            'Aucun résultat trouvé',
            style: TextStyle(
              fontSize: 14,
              color: textSecondaryColor,
            ),
          ),
        ),
      );
    }
    
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemCount: centers.length,
        itemBuilder: (context, index) {
          final center = centers[index];
          return _buildCenterCard(context, center);
        },
      ),
    );
  }

  // Widget pour les listes verticales
  Widget _buildVerticalList(BuildContext context, List<Map<String, String>> centers) {
    if (centers.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Text(
            'Aucun résultat trouvé',
            style: TextStyle(
              fontSize: 14,
              color: textSecondaryColor,
            ),
          ),
        ),
      );
    }
    
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: centers.length,
      itemBuilder: (context, index) {
        final center = centers[index];
        return _buildCenterVerticalCard(context, center);
      },
    );
  }

  // Widget pour les cartes de centre (horizontales)
  Widget _buildCenterCard(BuildContext context, Map<String, String> center) {
    return GestureDetector(
      onTap: () {
        // Action pour ouvrir les détails du centre
      },
      child: Container(
        width: 280,
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13), // 0.05 * 255 = 13
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                center['image'] ?? 'assets/placeholder.jpg',
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, color: Colors.grey),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          center['name'] ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: textPrimaryColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            center['rating'] ?? '0.0',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: textPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: textSecondaryColor,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          center['location'] ?? '',
                          style: const TextStyle(
                            fontSize: 12,
                            color: textSecondaryColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: textSecondaryColor,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        center['hours'] ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                          color: textSecondaryColor,
                        ),
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
  }

  // Widget pour les cartes de centre (verticales)
  Widget _buildCenterVerticalCard(BuildContext context, Map<String, String> center) {
    return GestureDetector(
      onTap: () {
        // Action pour ouvrir les détails du centre
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13), // 0.05 * 255 = 13
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image.asset(
                center['image'] ?? 'assets/placeholder.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, color: Colors.grey),
                  );
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            center['name'] ?? '',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: textPrimaryColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              center['rating'] ?? '0.0',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: textPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: textSecondaryColor,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            center['location'] ?? '',
                            style: const TextStyle(
                              fontSize: 12,
                              color: textSecondaryColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        center['category'] ?? '',
                        style: const TextStyle(
                          fontSize: 10,
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: textSecondaryColor,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          center['hours'] ?? '',
                          style: const TextStyle(
                            fontSize: 12,
                            color: textSecondaryColor,
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
  }

  // Widget pour la grille de catégories
  Widget _buildCategoryGrid(BuildContext context, List<Map<String, String>> categories) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return _buildCategoryCard(context, category);
      },
    );
  }

  // Widget pour les cartes de catégorie
  Widget _buildCategoryCard(BuildContext context, Map<String, String> category) {
    return GestureDetector(
      onTap: () {
        // Action pour filtrer par catégorie
      },
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13), // 0.05 * 255 = 13
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.spa,
              color: primaryColor,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              category['name'] ?? '',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textPrimaryColor,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
