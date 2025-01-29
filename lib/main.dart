import 'package:flutter/material.dart';
import 'package:quicksplit/utils/app_constants.dart';
import 'package:quicksplit/utils/app_themes.dart';
import 'package:quicksplit/utils/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
