import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<ToDoList> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<String> tasks = [];
  List<bool> isChecked = [];
  bool showEmptyMessage = true;
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
                    int insertIndex = 0;

                    tasks.insert(insertIndex, _controller.text.trim());
                    isChecked.insert(insertIndex, false);

                    _listKey.currentState!.insertItem(
                      insertIndex,
                      duration: Duration(milliseconds: 300),
                    );

                    _controller.clear();
                  });
                },
              ),
            ),
          ),

          SizedBox(height: 20),
          if (tasks.isEmpty && showEmptyMessage)
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
            child: AnimatedList(
              key: _listKey,
              initialItemCount: tasks.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(index, animation);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        child: Card(
          child: ListTile(
            leading: IconButton(
              icon: Icon(
                Icons.check,
                color: isChecked[index] ? Colors.green : Colors.grey[700],
              ),
              onPressed: () {
                setState(() {
                  isChecked[index] = !isChecked[index];
                });
              },
            ),

            title: Text(tasks[index], style: TextStyle(fontSize: 18)),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    String old = tasks[index];

                    _controller.text = old;

                    _removeItemAnimated(index);
                  },
                ),

                // REMOVER
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _removeItemAnimated(index);
                    });
                    checkEmptyList();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _removeItemAnimated(int index) {
    final removedTask = tasks[index];
    final removedCheck = isChecked[index];

    tasks.removeAt(index);
    isChecked.removeAt(index);

    _listKey.currentState!.removeItem(index, (context, animation) {
      return FadeTransition(
        opacity: animation,
        child: SizeTransition(
          sizeFactor: animation,
          child: Card(
            color: Colors.red[50],
            child: ListTile(
              title: Text(removedTask, style: TextStyle(color: Colors.red)),
            ),
          ),
        ),
      );
    }, duration: Duration(milliseconds: 300));
  }

  void checkEmptyList() {
    if (tasks.isEmpty) {
      showEmptyMessage = false;

      Future.delayed(Duration(milliseconds: 500), () {
        if (mounted && tasks.isEmpty) {
          setState(() {
            showEmptyMessage = true;
          });
        }
      });
    } else {
      showEmptyMessage = false;
    }
  }
}
