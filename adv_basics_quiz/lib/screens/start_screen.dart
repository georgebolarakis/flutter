import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/start_quiz_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  static const String mainText = 'Learn Flutter the fun way!';

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          // child:
          SizedBox(
            //the sized box is optional when we use the mainAxisSize
            width: 300,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              //slightly transparent image
              color: const Color.fromARGB(160, 250, 249, 249),
            ),
          ),
          // ),
          const SizedBox(
            height: 80,
          ),
          Text(
            mainText,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 219, 197, 248),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          StartQuizButton(startQuiz),
        ],
      ),
    );
  }
}
