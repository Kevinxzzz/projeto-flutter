import 'package:flutter/material.dart';
import 'package:teste_app/app_controller.dart';
import 'package:teste_app/home_page.dart';
import 'package:teste_app/login_page.dart';
import 'package:teste_app/main.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            brightness: AppController.instance.isDarkTheme ? Brightness.light : Brightness.dark,
          ),
          home: LoginPage(),
        );
      },
    );
  }
}
