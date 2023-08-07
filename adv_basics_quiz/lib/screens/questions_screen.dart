import 'package:adv_basics_quiz/widgets/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Be as wide as possible
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'the question..',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 1 text ..', onTap: () {}),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 2 text ..', onTap: () {}),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 3 text ..', onTap: () {}),
        ],
      ),
    );
  }
}
