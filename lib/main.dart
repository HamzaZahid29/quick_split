import 'package:flutter/material.dart';
import 'package:quicksplit/utils/app_constants.dart';
import 'package:quicksplit/utils/app_themes.dart';
import 'package:quicksplit/views/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppThemes.lightTheme,
      home: HomePage(),
    );
  }
}
