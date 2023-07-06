import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Initial variable(empty list)
  final List<String> _todos = ['task1', 'task2', 'task3', 'task4'];

//Dialog Box popup
//text input and add to the _todos
  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTodo = '';
        TextEditingController controller = TextEditingController();

        return AlertDialog(
          title: const Text('Enter new task Bellow:'),
          content: TextField(
            controller: controller,
            // onChanged: (value) {
            //   value = newTodo;
            // },
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Submit'),
              onPressed: () {
                setState(
                  () {
                    newTodo = controller.text;
                    _todos.add(newTodo);
                  },
                );
                Navigator.of(context).pop();
              },
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
        title: const Text('To-do list'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          return ListTile(
            title: Text(
              todo,
              style: TextStyle(
                decoration: todo.startsWith('-') ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            onTap: () {
              setState(
                () {
                  if (todo.startsWith('-')) {
                    _todos[index] = todo.substring(2);
                  } else {
                    _todos[index] = '-$todo';
                  }
                },
              );
            },
            onLongPress: () => setState(
              () {
                _todos.removeAt(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child:const Icon(Icons.add),
      ),
    );
  }

}
