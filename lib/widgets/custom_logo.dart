
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final double size;

  const CustomLogo({super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF6B3E75), width: 2.0),
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/logo.png',
          height: size,
          width: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.error,
            size: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}