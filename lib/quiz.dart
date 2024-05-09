import 'package:flutter/material.dart';
import 'package:quiz_app/landingpage.dart';
import 'package:quiz_app/question.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = LandingPage(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const Question();

      print(screenWidget);
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
