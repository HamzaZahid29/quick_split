import 'package:flutter/material.dart';
import 'package:quicksplit/utils/app_constants.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
      ),
    );
  }
}
