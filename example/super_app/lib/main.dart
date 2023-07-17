import 'package:flutter/material.dart';
//we need this package to be able to write on the emulator's/phone's local cach
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

void main() => runApp(
      MaterialApp(
        title: 'Demo',
        home: FlutterDemo(
          storage: CounterStorage(),
        ),
      ),
    );

//Here we define and get the path to where this application's
//files will be stored
class CounterStorage {
  //method to get the document directory [local Path]
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //method to get the local file where we store the counter from inside the local directory
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  //Read what's inside the counter.txt
  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      return 0; // first time the app opened
    }
  }

  //write the count to counter.txt
  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}

class FlutterDemo extends StatefulWidget {
  const FlutterDemo({super.key, required this.storage});
  final CounterStorage storage;

  @override
  State<FlutterDemo> createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    //read the current value
    widget.storage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++; // add one to counter, call this for onPressed
    });
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Bar')),
      body: Center(
        child: Text('Button was tapped: $_counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
