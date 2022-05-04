import "package:flutter/material.dart";
import "../controllers/app.controller.dart";

class SwitchThemeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
