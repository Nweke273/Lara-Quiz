class QuizQuestion {
  QuizQuestion(this.text, this.number, this.answers);
  final String text;
  final int number;
  final List<String> answers;

  List<String> getShuffledAnswers() //retruns a list of string
  {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
