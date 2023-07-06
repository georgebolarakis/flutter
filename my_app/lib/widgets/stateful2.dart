// import 'package:flutter/material.dart';

// void main() => runApp(
//       MaterialApp(
//         home: Scaffold(
//           body: Center(
//             child: Counter(),
//           ),
//         ),
//       ),
//     );

// class Counter extends StatefulWidget {
//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   //Row
//   //Push button counter increments

//   //Initial value to track and update _counter var
//   int _counter = 0;

//   //incrementing function _counter ++ setState()
//   void _increment() {
//     setState(() {
//       _counter++;
//     });
//   }

//   //Widger build() Button onPressed: _increment
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         TextButton(onPressed: _increment, child: const Text('Press me')),
//         Text("You pressed the button $_counter times"),
//       ],
//     );
//   }
// }