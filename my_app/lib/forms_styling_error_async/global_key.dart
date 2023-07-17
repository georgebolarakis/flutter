import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Demo';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(primarySwatch: Colors.cyan, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _textController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please check your entries';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                //accesses the state object of the instance
                //goes throught our validators and checks if
                //everything is in place
                if (_formKey.currentState!.validate()) {
                  //print("text controller text ${_textController.text}");
                  // a message that appears from the bottom
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'text controller text ${_textController.text}',
                      ),
                    ),
                  );
                }
              },
              child: const Text('Validate'),
            ),
          ),
        ],
      ),
    );
  }
}
