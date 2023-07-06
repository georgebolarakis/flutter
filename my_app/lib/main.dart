// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: UserButton(),
// //       //theme: ThemeData(brightness: Brightness.dark),
// //     ),
// //   );
// // }

// void main() {
//   runApp(const MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: UserButton(),
//       ),
//     ),
//   ));
// }

// class UserButton extends StatelessWidget {
//   const UserButton({super.key});
// //The build method returns a widget
// //that describes the button's appearance and behaviour
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         //onTap child widget inside of GestureDetector, waht should happen?
//         print('UserButton was pressed');
//       },
//       //a container widget that defines the size, padding, margin, and appearance of the button
//       child: Container(
//         height: 50,
//         padding: const EdgeInsets.all(8),
//         margin: const EdgeInsets.symmetric(horizontal: 8),

//         //decoration acts similar to CSS styling, but for our child object
//         decoration: BoxDecoration(
//           //button border radius
//           borderRadius: BorderRadius.circular(2.0),
//           color: Colors.blue,
//         ),
//         //a center widget that centers the button text
//         child: const Center(
//           child: Text('Click here'),
//         ),
//       ),
//     );

//     // Scaffold(
//     //   appBar: AppBar(
//     //     title: const Text('AppBar title'),
//     //   ),
//     //   body: const Center(
//     //     child: Text('Some Text here'),
//     //   ),
//     // );
//   }
// }

// // const userName = 'George';
// // void main() {
// //   //runApp takes a widget and pushes it to our main screen
// //   //widget? Center
// //   //Center --> child:widget (centers it on screen)
// //   runApp(
// //     const Center(
// //       child: Text(
// //         'Hello, $userName',
// //         textDirection: TextDirection.ltr,
// //         style: TextStyle(color: Colors.blueGrey, fontSize: 24.0),
// //       ),
// //     ),
// //   );
// // }

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('AppBar title'),
// //         ),
// //         body: Center(
// //           child: Text('Some Text'),
// //         ),
// //       ),
// //     ),
// //   );
// // }
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

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
