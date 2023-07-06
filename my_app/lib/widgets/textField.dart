// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// //stateless MyApp
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// //Stateful MyHomePage
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //Initial var
//   String _inputText = "";

//   //Widget --> setState to update var --> Widget stateful element --> build
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_inputText),
//       ),
//       body: Center(
//         child: TextField(
//           textAlign: TextAlign.center,
//           // style: const TextStyle(
//           //   backgroundColor: Colors.lightBlue,
//           // ),
//           decoration: const InputDecoration(
//             hintText: 'Enter some text here!',
//           ),
//           onChanged: (value) {
//             setState(() {
//               _inputText = value;
//             });
//           },
//         ),
//       ),
//       bottomSheet: Container(
//         alignment: Alignment.center,
//         height: 50,
//         child: Text(_inputText),
//       ),
//     );
//   }
// }

//state --
//Scaffold -. AppBar top, Center textField, bottomSheet
