import 'package:flutter/material.dart';
import 'package:teste_app/widgets/toDo_List.dart';
import 'package:teste_app/components/custom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("to-do list"), actions: [CustomSwitch()]),
      body: ToDoList(),
    );
  }
}
