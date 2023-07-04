import 'package:flutter/material.dart';

const userName = 'George';
void main() {
  //runApp takes a widget and pushes it to our main screen
  //widget? Center
  //Center --> child:widget (centers it on screen)
  runApp(
    const Center(
      child: Text(
        'Hello, $userName',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.blueGrey, fontSize: 24.0),
      ),
    ),
  );
}
