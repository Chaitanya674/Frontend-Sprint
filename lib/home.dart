import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todoItems = [];
  TextEditingController _textEditingController = TextEditingController();

  void _addTodoItem() {
    if (_textEditingController.text.isNotEmpty) {
      setState(() {
        todoItems.add(_textEditingController.text);
        _textEditingController.clear();
      });
    }
  }

  void _removeTodoItem(int index) {
    setState(() {
      todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do App'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Enter a task',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addTodoItem,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todoItems[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _removeTodoItem(index),
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
