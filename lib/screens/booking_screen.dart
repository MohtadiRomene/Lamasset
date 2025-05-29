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
  final _dateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _notesController = TextEditingController();
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
  }

  @override
  void dispose() {
    _salonIdController.dispose();
    _serviceIdController.dispose();
    _dateController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    _notesController.dispose();
    super.dispose();
  }
}