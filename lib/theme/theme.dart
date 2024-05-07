import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black12, brightness: Brightness.dark),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 23,
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 21,
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 19,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 22,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 20,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 18,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amberAccent,
  ),
);
