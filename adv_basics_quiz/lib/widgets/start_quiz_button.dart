import 'package:flutter/material.dart';

class StartQuizButton extends StatelessWidget {
  const StartQuizButton(this.callback, {super.key});

  final VoidCallback? callback;
  final quizButton = 'Start Quiz';

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        //backgroundColor: const Color.fromARGB(255, 76, 64, 243),
      ),
      icon: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      onPressed: callback,
      label: Text(
        quizButton,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
