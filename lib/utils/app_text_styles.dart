import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get heading1 => GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get heading2 => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get heading3 => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get bodyText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get caption => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static TextStyle get buttonText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle get appBarTitle => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get inputText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get inputHint => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
}
