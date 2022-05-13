import "package:flutter/material.dart";

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppController instance = AppController();

  changeAppTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
