import "package:flutter/material.dart";

class AppController extends ChangeNotifier {
  bool isThemeDark = false;

  static AppController instance = AppController();

  changeTheme() {
    isThemeDark = !isThemeDark;
    notifyListeners();
  }
}
