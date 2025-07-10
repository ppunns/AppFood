import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color(0xFFFF8C00), // Deep Orange
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFFF8C00),
        primary: const Color(0xFFFF8C00),
        onPrimary: Colors.white,
        secondary: const Color(0xFFFF6B00), // Darker orange for secondary
        onSecondary: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF8C00), // Orange color
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          minimumSize: const Size.fromHeight(62),
        ),
      ),
    );
  }
}
