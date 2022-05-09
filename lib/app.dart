import "package:flutter/material.dart";
import "./controllers/app.controller.dart";
import "./screens/login.screen.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, widget) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.deepOrange,
                  brightness: AppController.instance.isDarkTheme
                      ? Brightness.dark
                      : Brightness.light),
              home: const Login());
        });
  }
}
