import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black12, brightness: Brightness.dark),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 28,
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 24,
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 28,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 26,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.aboreto().fontFamily,
      fontSize: 24,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amberAccent,
  ),
);
