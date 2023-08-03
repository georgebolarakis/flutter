import 'package:darts_app/widgets/styled_text.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Text(
        //   helloWorld,
        //   style: TextStyle(color: Colors.white),
        // ),
        const StyledText(secText),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}
