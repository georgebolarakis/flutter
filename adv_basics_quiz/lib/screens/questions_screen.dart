import 'package:adv_basics_quiz/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

//Here is where we lifted the state
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//const List<QuizQuestion> list;

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    //currentQuestionIndex += currentQuestionIndex;
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      //Be as wide as possible
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 214, 191, 246),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // here we map our shuffled answers list
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            // const SizedBox(
            //   height: 30,
            // ),
            // AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            // const SizedBox(
            //   height: 30,
            // ),
            // AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
            // const SizedBox(
            //   height: 30,
            // ),
          ],
        ),
      ),
    );
  }
}
