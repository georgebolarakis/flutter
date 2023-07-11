import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

List<Todo> _todos = [
  const Todo('Paint house', 'Paint it black'),
  const Todo('Clean house', 'Clean it with a broom'),
  const Todo('Wash cloths', 'Wash them in the washing machine'),
  const Todo('Pet dog', 'Pet him slowly'),
];

void main() {
  runApp(
    MaterialApp(
      title: 'App',
      home: TodosScreen(todos: _todos),
    ),
  );
}

class TodosScreen extends StatefulWidget {
  final List<Todo> todos;
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(todo: _todos[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Todo? newTodo = await showDialog<Todo>(
            context: context,
            builder: (BuildContext context) {
              String? title;
              String? description;

              return AlertDialog(
                title: const Text('Create new Todo item'),
                content: Column(
                  children: <Widget>[
                    TextField(
                      maxLines: 2,
                      onChanged: (value) => title = value,
                      decoration: const InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      maxLines: 2,
                      onChanged: (value) => description = value,
                      decoration: const InputDecoration(labelText: 'Description'),
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel')),
                  TextButton(
                    onPressed: () {
                      if (title != null && description != null) {
                        Navigator.pop(context, Todo(title!, description!));
                      }
                    },
                    child: const Text('Save'),
                  ),
                ],
              );
            },
          );
          if (newTodo != null) {
            setState(() {
              _todos.add(newTodo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      //List View --> button --> update list --> list view, build
      // every listTile --> detail screen
    );
  }
}

// DetailsScreen
// takes in a single Todo object, display .title, .description

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.todo}) : super(key: key);

  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen ${todo.title}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(todo.description),
        ),
      ),
    );
  }
}
