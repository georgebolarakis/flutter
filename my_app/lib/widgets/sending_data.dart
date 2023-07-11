import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

//My manual list
List<Todo> myCustomList = [
  const Todo('Paint house', 'Paint it black'),
  const Todo('Clean house', 'Clean it with a broom'),
  const Todo('Wash cloths', 'Wash them in the washing machine'),
  const Todo('Pet dog', 'Pet him slowly'),
];

void main() {
  runApp(MaterialApp(
    title: 'App',
    home: TodosScreen(todos: myCustomList),
  ));
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  const TodosScreen({Key? key, required this.todos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          //singel object instance todos[index]
          //title, description
          return ListTile(
            tileColor: Colors.grey,
            title: Text(todos[index].title),
            onTap: () => Navigator.push(
              context,
              //HomeListViewScreen --> Todo Object --> DetailsScreen
              MaterialPageRoute(
                builder: (context) => DetailsScreen(todo1: todos[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.todo1}) : super(key: key);
  //single todo object
  final Todo todo1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo1.title),
      ),
      body: Center(
        child: Text(todo1.description),
      ),
    );
  }
}
