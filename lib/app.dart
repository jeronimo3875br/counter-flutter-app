import "./app/views/home.view.dart";
import "package:flutter/material.dart";
import "./app/controllers/app.controller.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, widget) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isThemeDark
                  ? Brightness.dark
                  : Brightness.light,
            ),
            home: Home(),
          );
        });
  }
}
