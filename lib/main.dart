import 'package:flutter/material.dart';
import 'package:quicksplit/utils/app_constants.dart';
import 'package:quicksplit/utils/app_themes.dart';
import 'package:quicksplit/utils/router/app_router.dart';
import 'package:provider/provider.dart';

import 'controllers/input_budget_screen_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => InputBudgetScreenProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
