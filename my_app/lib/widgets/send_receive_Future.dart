import 'package:flutter/material.dart';
import 'package:my_app/widgets/alertDialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: HomeScreen1(),
    );
  }
}

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  //initial var
  String _selection = "None";

  //user select?
  _startSelectionScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => const SelectionScreen()),
      ),
    );
    setState(
      () {
        //it returns result unless it is null that it returns the 'None' string.
        _selection = result ?? 'None';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selection was : $_selection'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _startSelectionScreen, child: const Text('Go to options screen'))
          ],
        ),
      ),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Option 1');
              },
              child: const Text('Option 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Option 2');
              },
              child: const Text('Option 2'),
            ),
          ],
        ),
      ),
    );
  }
}
