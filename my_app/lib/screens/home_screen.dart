import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Image.asset('assets/sokaki.jpg')
        //previous examples
        //Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        // Image(
        //   image:
        //       NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        // ),
        //Text("Home Screen inside home_screen.dart"),
      ),
    );
  }
}
