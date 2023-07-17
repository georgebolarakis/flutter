
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

//main
void main() {
  runApp(MaterialApp(title: 'Demo', home: FlutterDemo(storage: UserInputStorage())));
}

//storage class
class UserInputStorage {
  //path
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/input.txt');
  }

  //read from file
  Future<String> readUserInput() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return contents;
    } catch (e) {
      return '';
    }
  }

  //write to file
  Future<File> writeUserInput(String userInput) async {
    final file = await _localFile;
    return file.writeAsString('$userInput');
  }
}

//statefullwidget
class FlutterDemo extends StatefulWidget {
  //we need to require the storage
  const FlutterDemo({Key? key, required this.storage}) : super(key: key);
  final UserInputStorage storage;

  @override
  State<FlutterDemo> createState() => _FlutterDemoState();
}

//set up the state
class _FlutterDemoState extends State<FlutterDemo> {
  //initial variable
  final userInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.storage.readUserInput().then(
      (value) {
        setState(
          () {
            userInputController.text = value;
          },
        );
      },
    );
  }

  @override
  void dispose() {
    userInputController.dispose();
    super.dispose();
  }

  Future<File> _saveUserInput() {
    return widget.storage.writeUserInput(userInputController.text);
  }
//form TextImput TextEditing controller
//Scaffold
//textField --> Contorller
//action _saveUserInput() button on pressed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userInputController.text.isEmpty ? 'Demo' : userInputController.text),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: const InputDecoration(labelText: 'Enter Text'),
            textAlign: TextAlign.center,
            controller: userInputController,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _saveUserInput();
          });
        },
        tooltip: 'Save',
        child: const Icon(Icons.save),
      ),
    );
  }
}
