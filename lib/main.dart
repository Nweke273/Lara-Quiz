import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lara_test/widgets/quiz.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 59, 31, 4),
);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onPrimaryContainer,
                fontSize: 24),
            titleMedium: TextStyle(
                color: kColorScheme.onPrimaryContainer,
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.onPrimaryContainer,
                foregroundColor: kColorScheme.primaryContainer)),
      ),
      home: const Quiz(),
    ),
  );
}
