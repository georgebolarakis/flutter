import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomForm(),
      theme: ThemeData(primarySwatch: Colors.cyan, fontFamily: 'Roboto'),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  //we need to create a focusNode object
  //late means that it is not initially initiallised
  late FocusNode myFocusNode;

//when we create a user
  @override
  void initState() {
    //we instantiate our widgets
    super.initState();
    //we initiate it here
    myFocusNode = FocusNode();
  }

//when the user removes the widget
  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(hintText: 'AutoFocus is true'),
              autofocus: true,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Focus node connected'),
              focusNode: myFocusNode,
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Input Three'),
              autofocus: true,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myFocusNode.requestFocus();
        },
        tooltip: 'Click me for focus on box two!',
        child: const Icon(Icons.star),
      ),
    );
  }
}
