import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/landingpage.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void selectedAnswerChoice(String answer){
    selectedAnswer.add(answer);
    var spce = "--------------------------------------";
    if (selectedAnswer.length == questions.length) {
        setState(() {
            activeScreen = 'result-screen';
          print(answer);
          print(selectedAnswer.length);
          print(spce);
          print(questions.length);
        });
       
    } 
  }
  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(context) {
    Widget screenWidget = LandingPage(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = Question(onSelectAnswer: selectedAnswerChoice,);
      // print(screenWidget);
    }else if(activeScreen == 'result-screen'){
        screenWidget = ResultScreen(chosenAnswer: selectedAnswer, onRestart: restartQuiz,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 55, 1, 110),
                Color.fromARGB(255, 103, 0, 206)
              ])),
          child: screenWidget,
        ),
      ),
    );
  }
}
