import "./screens/home.screen.dart";
import "package:flutter/material.dart";
import "./controllers/app.controller.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, widget) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.deepPurple,
                  brightness: AppController.instance.isDarkTheme
                      ? Brightness.dark
                      : Brightness.light),
              home: Home());
        });
  }
}
