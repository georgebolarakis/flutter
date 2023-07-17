import 'package:flutter/material.dart';
import 'package:my_app/widgets/alertDialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomForm(),
      title: 'Example',
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
  final myController = TextEditingController();
  //we want to add listeners on this myController
  //init
  @override
  void initState() {
    super.initState();
    //The listener is a direct connection to a method
    myController.addListener(_printLatestValue); //function/nethod void()
  }
  //dispose

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  //method / function boid _printLatestValue
  //we need to connect the listener to the controller
  void _printLatestValue() {
    print('Second field updates: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: 'First Field'),
              onChanged: (value) {
                print('My First Text Field: $value');
              },
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: 'Second Field'),
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}
