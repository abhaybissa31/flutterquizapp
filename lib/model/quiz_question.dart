class QuizQuestion{
  const QuizQuestion(this.questionText, this.answer);

  final String questionText;
  final List<String> answer;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}