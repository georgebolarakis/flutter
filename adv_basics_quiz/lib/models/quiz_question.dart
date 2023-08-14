class QuizQuestion {
  const QuizQuestion(this.questionText, this.answers);

  final String questionText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //Here we create a new answers list and we suffle it
    // List.of(answers).shuffle();

    // we first need to create the list and store it in the variable
    final shuffledList = List.of(answers);
    // then we shuffle it
    shuffledList.shuffle();
    // and return it
    return shuffledList;
  }
}
