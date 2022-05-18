import "package:flutter/material.dart";
import "../controllers/app.controller.dart";

class SwitchAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isThemeDark,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
