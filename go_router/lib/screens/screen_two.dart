import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('This is Screen Two'),
            ElevatedButton(
                onPressed: () => context.go('/screens/screen_one'),
                child: const Text('Go to screen 1')),
            ElevatedButton(
                onPressed: () => context.go('/screens/screen_two'),
                child: const Text('Go to screen 2')),
            ElevatedButton(
                onPressed: () => context.go('screens/home_screen'),
                child: const Text('Go to Home Screen')),
          ],
        ),
      ),
    );
  }
}