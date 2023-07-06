import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //initial var --> String in the Center
  String _inputText = '';

  //void show input dialog
  //AlertDialog
  void _showInputDialog() {
    //show the alertdialog box
    showDialog(
      context: context,
      builder: (BuildContext context) {
        //manage the text input filed // controller.text
        TextEditingController controller = TextEditingController();
        return AlertDialog(
          title: const Text('Enter some text'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Add some text'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                setState(() {
                  _inputText = controller.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //return Scaffold
  //AppBar - body(updated State text) --icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyNewApp'),
      ),
      body: Center(
        child: Text(
          //_inputText empty or not? == '' .isEmpty
          //if .isEmpty true then 'Tap the icon to enter text'
          //else 'You entered $_inputText
          //result = TextCondition ? trueValue : falseValue
          _inputText.isEmpty ? 'Tap Icon to enter text' : "$_inputText",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDialog,
        child: const Icon(Icons.edit),
      ),
    );
  }
}