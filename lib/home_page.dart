import 'package:flutter/material.dart';
import 'package:teste_app/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("to-do list"), actions: [CustomSwitch()]),

      body: ToDoList(),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        AppController.instance.isDarkTheme
            ? Icons.wb_sunny
            : Icons.nightlight_round,
      ),
      onPressed: () => {AppController.instance.changeTheme()},
      

    );
  }
}

class ToDoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<ToDoList> {
  final TextEditingController _controller = TextEditingController();
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: "Adicionar Tarefa",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(Icons.add, color: Colors.blue),
                onPressed: () {
                  if (_controller.text.trim().isEmpty) return;

                  setState(() {
                    tasks.add(_controller.text.trim());
                  });
                  _controller.clear();
                },
              ),
            ),
          ),
          SizedBox(height: 20),

          if (tasks.isEmpty)
            Column(
              children: [
                Icon(Icons.inbox, size: 70, color: Colors.grey),
                Text(
                  "Nenhuma tarefa adicionada.",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index], 
                    style: TextStyle(fontSize: 18)
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                              _controller.text = tasks[index];
                              tasks.removeAt(index);
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              tasks.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
