import 'package:lara_quiz/widgets/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:lara_quiz/widgets/questions_screen.dart';
import 'package:lara_quiz/data/questions.dart';
import 'package:lara_quiz/widgets/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'landing_page';
  @override
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = LandingPage(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(questionAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}
