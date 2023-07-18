import 'package:flutter/material.dart';

import 'routes.dart';

//_router == routes.dart
final _router = createRouter();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

//Import routs
//Run application
//MyApp MaterialApp.router()