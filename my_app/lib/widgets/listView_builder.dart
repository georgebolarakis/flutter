// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   final items = ['item1', 'item2', 'item3'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Title'),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             //item = item[0]
//             final item = items[index];
//             return ListTile(
//               leading: const Icon(Icons.person),
//               subtitle: Text('sub_$item'),
//               title: Text(item),
//               onTap: () => print("You just tapped item : $item"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
