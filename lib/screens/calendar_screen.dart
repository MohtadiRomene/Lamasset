import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/colors.dart';
import '../services/api_service.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  String? _selectedCenter;
  String? _selectedService;
  String? _selectedTime;
  bool _isLoading = false;
  String? _errorMessage;

  final List<Map<String, dynamic>> _beautyCenters = [
    {'id': '1', 'name': 'Centre Beauté Paris'},
    {'id': '2', 'name': 'Salon Élégance Lyon'},
    {'id': '3', 'name': 'Spa Harmonie Marseille'},
    {'id': '4', 'name': 'Institut Glamour Nice'},
  ];

  final Map<String, List<Map<String, dynamic>>> _centerServices = {
    'Centre Beauté Paris': [
      {'id': '1', 'name': 'Coupe de cheveux'},
      {'id': '2', 'name': 'Manucure'},
      {'id': '3', 'name': 'Maquillage'},
    ],
    'Salon Élégance Lyon': [
      {'id': '4', 'name': 'Coupe de cheveux'},
      {'id': '5', 'name': 'Soin du visage'},
      {'id': '6', 'name': 'Maquillage'},
    ],
    'Spa Harmonie Marseille': [
      {'id': '7', 'name': 'Soin du visage'},
      {'id': '8', 'name': 'Manucure'},
      {'id': '9', 'name': 'Massage'},
    ],
    'Institut Glamour Nice': [
      {'id': '10', 'name': 'Maquillage'},
      {'id': '11', 'name': 'Manucure'},
      {'id': '12', 'name': 'Soin du visage'},
    ],
  };

  final List<String> _timeSlots = ['09:00', '10:00', '11:00', '14:00', '15:00', '16:00'];

  List<Map<String, dynamic>> get _availableServices => _selectedCenter != null
      ? _centerServices[_selectedCenter] ?? []
      : [];

  void _confirmBooking() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      final userData = prefs.getString('user');
      if (userData == null) {
        throw Exception('Utilisateur non connecté');
      }
      // Removed unused 'user' variable
      // final user = jsonDecode(userData);

      final salon = _beautyCenters.firstWhere((center) => center['name'] == _selectedCenter);
      final salonId = salon['id'];

      final service = _availableServices.firstWhere((service) => service['name'] == _selectedService);
      final serviceId = service['id'];

      final formattedDate =
          '${_selectedDay.year}-${_selectedDay.month.toString().padLeft(2, '0')}-${_selectedDay.day.toString().padLeft(2, '0')}';

      final startTime = _selectedTime!;
      final startHour = int.parse(startTime.split(':')[0]);
      final endTime = '${(startHour + 1).toString().padLeft(2, '0')}:00';

      final response = await ApiService().createBooking(
        salonId: salonId,
        serviceId: serviceId,
        date: formattedDate,
        startTime: startTime,
        endTime: endTime,
        notes: 'Réservation via l\'application',
      );

      if (response['success'] && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Rendez-vous réservé chez $_selectedCenter pour le ${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year} à $_selectedTime pour $_selectedService !',
            ),
          ),
        );
        Navigator.pop(context);
      } else {
        setState(() {
          _errorMessage = response['message'];
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Erreur: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Réserver un rendez-vous'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientStart, AppColors.gradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choisissez un centre de beauté',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Centre de beauté',
                        border: OutlineInputBorder(),
                      ),
                      value: _selectedCenter,
                      items: _beautyCenters
                          .map<DropdownMenuItem<String>>((center) => DropdownMenuItem<String>(
                                value: center['name'],
                                child: Text(center['name']),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCenter = value;
                          _selectedService = null;
                          _selectedTime = null;
                        });
                      },
                      validator: (value) => value == null ? 'Veuillez choisir un centre' : null,
                      isExpanded: true,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Choisissez une date',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TableCalendar(
                      firstDay: DateTime.now(),
                      lastDay: DateTime.now().add(const Duration(days: 365)),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      },
                      calendarStyle: const CalendarStyle(
                        selectedDecoration: BoxDecoration(
                          color: AppColors.primaryPurple,
                          shape: BoxShape.circle,
                        ),
                        todayDecoration: BoxDecoration(
                          color: AppColors.secondaryPink,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Choisissez un service',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Service',
                        border: OutlineInputBorder(),
                      ),
                      value: _selectedService,
                      items: _availableServices
                          .map<DropdownMenuItem<String>>((service) => DropdownMenuItem<String>(
                                value: service['name'],
                                child: Text(service['name']),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedService = value;
                          _selectedTime = null;
                        });
                      },
                      validator: (value) => value == null ? 'Veuillez choisir un service' : null,
                      isExpanded: true,
                      hint: _selectedCenter == null
                          ? const Text('Veuillez d\'abord choisir un centre')
                          : null,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Choisissez une heure',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Heure',
                        border: OutlineInputBorder(),
                      ),
                      value: _selectedTime,
                      items: _timeSlots
                          .map<DropdownMenuItem<String>>((time) => DropdownMenuItem<String>(
                                value: time,
                                child: Text(time),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedTime = value;
                        });
                      },
                      validator: (value) => value == null ? 'Veuillez choisir une heure' : null,
                      isExpanded: true,
                    ),
                    if (_errorMessage != null) ...[
                      const SizedBox(height: 10),
                      Text(
                        _errorMessage!,
                        style: const TextStyle(color: Colors.redAccent),
                      ),
                    ],
                    const SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: _selectedCenter != null &&
                                _selectedService != null &&
                                _selectedTime != null
                            ? _confirmBooking
                            : null,
                        child: const Text('Confirmer le rendez-vous'),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}