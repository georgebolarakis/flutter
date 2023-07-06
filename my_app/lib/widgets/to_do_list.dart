import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Initial variable(empty list)
  List<String> _todos = ['task1', 'task2', 'task3'];

//Dialog Box popup
//text input and add to the _todos
  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTodo = '';

        return AlertDialog(
          title: const Text('Enter new task Bellow:'),
          content: TextField(
            onChanged: (value) {
              value = newTodo;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _todos.add(newTodo);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-do list'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          return ListTile(
            title: Text(todo),
          );
        },
      ),
    );
  }

  //ListView.builder --> ListTiles _todos
}
