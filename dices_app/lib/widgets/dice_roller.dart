import 'dart:math';
import 'package:darts_app/widgets/styled_text.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';
  var currentDice1Roll = 1;
  var currentDice2Roll = 2;

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1; //this will give us a valute between 1 and 6
    setState(() {
      //by setting the randomizer we save space since we don't need to
      //re run Random every time the app is build
      //since it just gets initialized ones and used many times
      currentDice1Roll = randomizer.nextInt(6) + 1;
      currentDice2Roll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$currentDice1Roll.png',
              width: 150,
            ),
            Image.asset(
              'assets/images/dice-$currentDice2Roll.png',
              width: 150,
            ),
          ],
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
