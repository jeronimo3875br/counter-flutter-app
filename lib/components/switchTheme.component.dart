import "package:flutter/material.dart";
import "../controllers/app.controller.dart";

class SwitchAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        activeColor:
            AppController.instance.isDarkTheme ? Colors.white : Colors.white,
        activeTrackColor:
            AppController.instance.isDarkTheme ? Colors.black26 : Colors.white,
        onChanged: (value) {
          AppController.instance.changeAppTheme();
        });
  }
}
