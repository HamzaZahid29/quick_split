import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final Color primaryColor = Color(0xFF1DB954); // Spotify Green
  static final Color darkAccentColor = Color(0xFF191414); // Dark background
  static final Color secondaryColor = Colors.grey.shade800; // Subtle grey
  static final Color lightAccentColor = Colors.white; // Light text for contrast
  static final Color scaffoldBackgroundColor = Colors.black; // Dark background

  static final Color lightBackgroundColor = Colors.white; // Light theme background
  static final Color darkTextColor = Colors.black87; // Dark text for light mode
  static final Color lightGrey = Colors.grey.shade300; // Light mode secondary color

  static final LinearGradient appLinearGradient = LinearGradient(
    colors: [Color(0xFF1DB954), Color(0xFF1A1A1A)],
    stops: [0.1, 0.7],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final AppBarTheme darkAppBarTheme = AppBarTheme(
    centerTitle: true,
    foregroundColor: lightAccentColor,
    backgroundColor: darkAccentColor,
    iconTheme: IconThemeData(color: lightAccentColor),
    titleTextStyle: GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: lightAccentColor),
    ),
    actionsIconTheme: IconThemeData(color: primaryColor),
  );

  static final AppBarTheme lightAppBarTheme = AppBarTheme(
    centerTitle: true,
    foregroundColor: darkTextColor,
    backgroundColor: lightBackgroundColor,
    iconTheme: IconThemeData(color: darkTextColor),
    titleTextStyle: GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: darkTextColor),
    ),
    actionsIconTheme: IconThemeData(color: primaryColor),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    appBarTheme: darkAppBarTheme,

    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).apply(
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
      surface: darkAccentColor,
      background: scaffoldBackgroundColor,
    ),

    cardTheme: CardTheme(
      color: darkAccentColor,
      shadowColor: secondaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
      unselectedItemColor: secondaryColor,
      backgroundColor: darkAccentColor,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    appBarTheme: lightAppBarTheme,

    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme).apply(
      bodyColor: darkTextColor,
      displayColor: darkTextColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        textStyle: GoogleFonts.poppins(fontSize: 16, color: primaryColor),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: BorderSide(color: primaryColor),
        textStyle: GoogleFonts.poppins(fontSize: 16, color: primaryColor),
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
        borderSide: BorderSide(color: lightGrey),
      ),
      hintStyle: GoogleFonts.poppins(color: Colors.grey),
    ),

    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: lightGrey,
      onPrimary: Colors.white,
      onSecondary: darkTextColor,
      onSurface: darkTextColor,
      onBackground: darkTextColor,
      surface: lightBackgroundColor,
      background: lightBackgroundColor,
    ),

    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey.shade400,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey.shade600,
      backgroundColor: Colors.white,
    ),
  );
}
