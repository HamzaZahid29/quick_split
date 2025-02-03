import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  bool isLoading = true;
  String data = "";

  DataProvider() {
    _fetchData();
  }

  Future<void> _fetchData() async {
    await Future.delayed(Duration(seconds: 3)); // Simulate network delay
    data = "Data Loaded Successfully!";
    isLoading = false;
    notifyListeners();
  }
}
