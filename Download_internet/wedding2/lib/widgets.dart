import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  const IconAndText(this.icon, this.text, {super.key});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon), SizedBox(width: 8), Text(text)],
        ));
  }
}
