import 'package:flutter/material.dart';

//import 'widgets/custom_container.dart';
import 'package:darts_app/widgets/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 231, 238, 232),
        appBar: AppBar(title: const Text("MyApp")),
        body: const GradientContainer(
          colors1: [
            Colors.blue,
            Colors.lightBlue,
          ],
        ),
      ),
    );
  }
}


// //Second Option
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dice',
//       theme: ThemeData(primarySwatch: Colors.blueGrey),
//       home: Scaffold(
//         // backgroundColor: const Color.fromARGB(255, 231, 238, 232),
//         appBar: AppBar(title: const Text("MyApp")),
//         body: const GradientContainer(
//           color1: Colors.blue,
//           color2: Colors.lightBlue,
//         ),
//       ),
//     );
//   }
// }
