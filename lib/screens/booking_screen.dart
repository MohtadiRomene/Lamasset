<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:salon_app_frontend/services/api_service.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  BookingScreenState createState() => BookingScreenState();
}

class BookingScreenState extends State<BookingScreen> {
  final _apiService = ApiService();
  final _salonIdController = TextEditingController();
  final _serviceIdController = TextEditingController();
=======
import 'dart:convert';
import 'dart:html' as html; 
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();

  
>>>>>>> dc94388 (PFE_PROJECT)
  final _dateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _notesController = TextEditingController();
<<<<<<< HEAD
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _createBooking() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final result = await _apiService.createBooking(
      salonId: _salonIdController.text,
      serviceId: _serviceIdController.text,
      date: _dateController.text,
      startTime: _startTimeController.text,
      endTime: _endTimeController.text,
      notes: _notesController.text,
    );

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
      if (result['success']) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Booking created successfully!')),
        );
        _clearFields();
      } else {
        setState(() {
          _errorMessage = result['message'];
        });
      }
    }
  }

  void _clearFields() {
    _salonIdController.clear();
    _serviceIdController.clear();
    _dateController.clear();
    _startTimeController.clear();
    _endTimeController.clear();
    _notesController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = const Color(0xFFE57373);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créer une réservation'),
        backgroundColor: Colors.pink[50],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Poppins',
        ),
      ),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _salonIdController,
              decoration: InputDecoration(
                labelText: 'Salon',
                hintText: 'Entrez l\'ID du salon',
                prefixIcon: const Icon(Icons.storefront),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _serviceIdController,
              decoration: InputDecoration(
                labelText: 'Service',
                hintText: 'Entrez l\'ID du service',
                prefixIcon: const Icon(Icons.design_services),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: 'YYYY-MM-DD',
                prefixIcon: const Icon(Icons.calendar_today),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.datetime,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _startTimeController,
              decoration: InputDecoration(
                labelText: 'Heure de début',
                hintText: 'HH:MM',
                prefixIcon: const Icon(Icons.access_time),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.datetime,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _endTimeController,
              decoration: InputDecoration(
                labelText: 'Heure de fin',
                hintText: 'HH:MM',
                prefixIcon: const Icon(Icons.access_time),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.datetime,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _notesController,
              decoration: InputDecoration(
                labelText: 'Notes',
                hintText: 'Ajouter une note (optionnel)',
                prefixIcon: const Icon(Icons.note_alt_outlined),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                filled: true,
                fillColor: Colors.white,
              ),
              maxLines: 3,
              textInputAction: TextInputAction.done,
            ),
            if (_errorMessage != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        elevation: 4,
                      ),
                      onPressed: _createBooking,
                      child: const Text(
                        'Créer la réservation',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
=======
  final _salonIdController = TextEditingController();
  final _serviceIdController = TextEditingController();

  String? userId;
  bool _isLoading = false;
  String? _errorMessage;
  String? _successMessage;

  @override
  void initState() {
    super.initState();
    userId = html.window.localStorage['userId'];

    if (userId == null) {
      _errorMessage = 'Utilisateur non connecté. Veuillez vous connecter.';
    }
>>>>>>> dc94388 (PFE_PROJECT)
  }

  @override
  void dispose() {
<<<<<<< HEAD
    _salonIdController.dispose();
    _serviceIdController.dispose();
=======
>>>>>>> dc94388 (PFE_PROJECT)
    _dateController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    _notesController.dispose();
<<<<<<< HEAD
    super.dispose();
  }
}
=======
    _salonIdController.dispose();
    _serviceIdController.dispose();
    super.dispose();
  }
Future<void> _submitBooking() async {
  if (!_formKey.currentState!.validate()) return;

  if (userId == null) {
    setState(() {
      _errorMessage = 'Utilisateur non connecté.';
    });
    return;
  }

  setState(() {
    _isLoading = true;
    _errorMessage = null;
    _successMessage = null;
  });

  final bookingData = {
    'date': _dateController.text.trim(),
    'startTime': _startTimeController.text.trim(),
    'endTime': _endTimeController.text.trim(),
    'notes': _notesController.text.trim(),
    'salonId': _salonIdController.text.trim(),
    'serviceId': _serviceIdController.text.trim(),
    'user_id': userId!, 
  };

  
  debugPrint('Données envoyées: ${jsonEncode(bookingData)}');

  try {
    final response = await http.post(
      Uri.parse('http://localhost:3000/api/bookings'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(bookingData),
    );

    final data = jsonDecode(response.body);

    if (response.statusCode == 201 && data['success'] == true) {
      setState(() {
        _successMessage = 'Réservation réussie !';
      });
      _formKey.currentState!.reset();
    } else {
      setState(() {
        _errorMessage = data['message'] ?? 'Erreur lors de la réservation. Code: ${response.statusCode}';
      });
    }
  } catch (e) {
    setState(() {
      _errorMessage = 'Erreur réseau : $e';
    });
  } finally {
    setState(() {
      _isLoading = false;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    if (userId == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Réservation')),
        body: Center(child: Text(_errorMessage ?? 'Erreur inconnue')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Réservation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                if (_errorMessage != null)
                  Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
                if (_successMessage != null)
                  Text(_successMessage!, style: const TextStyle(color: Colors.green)),
                TextFormField(
                  controller: _dateController,
                  decoration: const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Entrez une date';
                    if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) return 'Format date invalide';
                    return null;
                  },
                ),
                TextFormField(
                  controller: _startTimeController,
                  decoration: const InputDecoration(labelText: 'Heure de début (HH:mm)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Entrez une heure de début';
                    if (!RegExp(r'^([0-1]\d|2[0-3]):([0-5]\d)$').hasMatch(value)) return 'Format heure invalide';
                    return null;
                  },
                ),
                TextFormField(
                  controller: _endTimeController,
                  decoration: const InputDecoration(labelText: 'Heure de fin (HH:mm)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Entrez une heure de fin';
                    if (!RegExp(r'^([0-1]\d|2[0-3]):([0-5]\d)$').hasMatch(value)) return 'Format heure invalide';
                    return null;
                  },
                ),
                TextFormField(
                  controller: _notesController,
                  decoration: const InputDecoration(labelText: 'Notes (optionnel)'),
                  maxLines: 2,
                ),
                TextFormField(
                  controller: _salonIdController,
                  decoration: const InputDecoration(labelText: 'ID du salon'),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Entrez l\'ID du salon';
                    if (int.tryParse(value) == null) return 'ID du salon invalide';
                    return null;
                  },
                ),
                TextFormField(
                  controller: _serviceIdController,
                  decoration: const InputDecoration(labelText: 'ID du service'),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Entrez l\'ID du service';
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                _isLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: _submitBooking,
                        child: const Text('Réserver'),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
>>>>>>> dc94388 (PFE_PROJECT)
