import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class hTextTheme {
  static TextTheme lightTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
          color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w300),
      // headline1: GoogleFonts.montserrat(
      // color: Colors.white70, fontWeight: FontWeight.w700, fontSize: 20),
      titleMedium: GoogleFonts.poppins(
          color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.poppins(
          color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
      headlineSmall: GoogleFonts.poppins(
          color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 17, color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
      displayLarge: GoogleFonts.poppins(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold));

  static TextTheme DarkTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
          color: Colors.white70, fontSize: 25, fontWeight: FontWeight.w300),
      titleMedium: GoogleFonts.poppins(
          color: Colors.white60, fontSize: 30, fontWeight: FontWeight.bold),
      headlineMedium: GoogleFonts.poppins(
          color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
      headlineSmall: GoogleFonts.poppins(
          color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 17, color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      displayLarge: GoogleFonts.poppins(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold));
}
