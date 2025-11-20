import 'package:flutter/material.dart';
import "package:teste_app/controllers/app_controller.dart";
class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        AppController.instance.isDarkTheme
            ? Icons.wb_sunny
            : Icons.nightlight_round,
      ),
      onPressed: () => AppController.instance.changeTheme(),
    );
  }
}
