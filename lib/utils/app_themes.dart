import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final Color primaryColor = Color(0xFF1DB954); // Spotify Green
  static final Color accentColor = Color(0xFF191414); // Dark background color
  static final Color secondaryColor =
      Colors.grey.shade800; // Darker grey for subtle components
  static final Color lightAccentColor = Colors.white; // Light text for contrast
  static final Color scaffoldBackgroundColor = Colors.black; // Dark background

  static final LinearGradient appLinearGradient = LinearGradient(
    colors: [
      Color(0xFF1DB954),
      Color(0xFF1A1A1A),
    ],
    stops: [0.1, 0.7],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final appbarTheme2 = AppBarTheme(
    centerTitle: true,
    foregroundColor: lightAccentColor,
    backgroundColor: accentColor,
    iconTheme: IconThemeData(color: lightAccentColor),
    titleTextStyle: GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: lightAccentColor),
    ),
    actionsIconTheme: IconThemeData(color: primaryColor),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,

    // AppBar Theme
    appBarTheme: appbarTheme2,

    // Text Styles
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ).apply(
      bodyColor: lightAccentColor,
      displayColor: lightAccentColor,
    ),

    primaryTextTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().primaryTextTheme,
    ).apply(
      bodyColor: lightAccentColor,
      displayColor: lightAccentColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: GoogleFonts.poppins(fontSize: 16),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        textStyle: GoogleFonts.poppins(fontSize: 16),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: BorderSide(color: primaryColor),
        textStyle: GoogleFonts.poppins(fontSize: 16),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),

    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 2),
        borderRadius: BorderRadius.circular(30),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: secondaryColor),
      ),
      hintStyle: GoogleFonts.poppins(color: secondaryColor),
    ),

    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: lightAccentColor,
      onBackground: lightAccentColor,
      surface: accentColor,
      background: scaffoldBackgroundColor,
    ),

    cardTheme: CardTheme(
      color: accentColor,
      shadowColor: secondaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
      unselectedItemColor: secondaryColor,
      backgroundColor: accentColor,
    ),
  );
}
