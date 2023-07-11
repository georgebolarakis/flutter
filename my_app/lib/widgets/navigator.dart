import 'package:flutter/material.dart';

//First screen --> second screen pop() --> first screen
void main() => runApp(
      const MaterialApp(
        title: 'App',
        home: FirstScreen(),
      ),
    );

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My First Step")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              //we define a MaterialPageRoute when we are going forware and 
              //we need to know where in the widget tree to go
              MaterialPageRoute(
                builder: (context) {
                  return const SecondScreen();
                },
              ),
            );
          },
          child: const Text('Go to screen two'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Second Step")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go to screen one'),
        ),
      ),
    );
  }
}
