import 'app/views/home.screen.dart';
import 'app/views/login.screen.dart';
import "package:flutter/material.dart";
import 'app/controllers/app.controller.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, widget) {
          return MaterialApp(
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
                  brightness: AppController.instance.isDarkTheme
                      ? Brightness.dark
                      : Brightness.light),
              home: const Login(),
              routes: {
                "/login": (context) => const Login(),
                "/home": (context) => Home()
              });
        });
  }
}
