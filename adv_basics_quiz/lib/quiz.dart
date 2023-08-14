import 'package:adv_basics_quiz/screens/questions_screen.dart';
import 'package:flutter/material.dart';

import 'screens/start_screen.dart';

//we need to lift the state up since this class has access to the QuestionScreen as well as the ResultsScreen

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

// we are adding the selected answer to the selectedAnswers List
// we need to forward this function to QuestionsScreen
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    // activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen();
    if (activeScreen == 'questions-screen') {
      //we are lifting the state here
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 76, 64, 243),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 76, 64, 243),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          //screenWidget),
        ),
      ),
    );
  }
}
