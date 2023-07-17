import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: const MyCustomForm(),
      theme: ThemeData(primarySwatch: (Colors.cyan), fontFamily: 'Roboto'),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Input1'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(labelText: 'email'),
                controller: firstController,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(labelText: 'password'),
                controller: secondController,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Text('First Value: ${firstController.text}'),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Second Value: ${secondController.text}'),
                    ],
                  ),
                );
              },
            );
          },
          tooltip: 'Show me the values',
          child: const Icon(Icons.text_fields),
        ),
      ),
    );
  }
}
