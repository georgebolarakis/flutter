import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';


//Import home_screen dart

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: HomeScreen(),
    );
  }
}





















// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: UserButton(),
// //       //theme: ThemeData(brightness: Brightness.dark),
// //     ),
// //   );
// // }

// void main() {
//   runApp(const MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: UserButton(),
//       ),
//     ),
//   ));
// }

// class UserButton extends StatelessWidget {
//   const UserButton({super.key});
// //The build method returns a widget
// //that describes the button's appearance and behaviour
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         //onTap child widget inside of GestureDetector, waht should happen?
//         print('UserButton was pressed');
//       },
//       //a container widget that defines the size, padding, margin, and appearance of the button
//       child: Container(
//         height: 50,
//         padding: const EdgeInsets.all(8),
//         margin: const EdgeInsets.symmetric(horizontal: 8),

//         //decoration acts similar to CSS styling, but for our child object
//         decoration: BoxDecoration(
//           //button border radius
//           borderRadius: BorderRadius.circular(2.0),
//           color: Colors.blue,
//         ),
//         //a center widget that centers the button text
//         child: const Center(
//           child: Text('Click here'),
//         ),
//       ),
//     );

//     // Scaffold(
//     //   appBar: AppBar(
//     //     title: const Text('AppBar title'),
//     //   ),
//     //   body: const Center(
//     //     child: Text('Some Text here'),
//     //   ),
//     // );
//   }
// }

// // const userName = 'George';
// // void main() {
// //   //runApp takes a widget and pushes it to our main screen
// //   //widget? Center
// //   //Center --> child:widget (centers it on screen)
// //   runApp(
// //     const Center(
// //       child: Text(
// //         'Hello, $userName',
// //         textDirection: TextDirection.ltr,
// //         style: TextStyle(color: Colors.blueGrey, fontSize: 24.0),
// //       ),
// //     ),
// //   );
// // }

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('AppBar title'),
// //         ),
// //         body: Center(
// //           child: Text('Some Text'),
// //         ),
// //       ),
// //     ),
// //   );
// // }
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

