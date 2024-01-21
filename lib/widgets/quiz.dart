import 'package:lara_test/data/app_config.dart';
import 'package:lara_test/widgets/disclaimer_screen.dart';
import 'package:lara_test/widgets/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:lara_test/widgets/questions_screen.dart';
import 'package:lara_test/data/questions.dart';
import 'package:lara_test/widgets/quiz_instruction.dart';
import 'package:lara_test/widgets/results_screen.dart';

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
  void switchScreen() {
    setState(() {
      activeScreen = 'disclaimer_screen';
    });
  }

  void startNow() {
    setState(() {
      activeScreen = "questions_screen";
    });
  }

  void startQuiz() {
    setState(() {
      activeScreen = "questions_screen";
    });
  }

  void quizInstruction() {
    setState(() {
      activeScreen = "quiz_instruction";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'restart_quiz';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = LandingPage(switchScreen);
    Widget appTitle = const Text('Lara Quiz');
    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(
          questionAnswers: selectedAnswers, restartQuiz: restartQuiz);
    }

    if (activeScreen == 'restart_quiz') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'disclaimer_screen') {
      screenWidget = DisclaimerScreen(quizInstruction);
    }

    if (activeScreen == 'quiz_instruction') {
      screenWidget = QuizInstruction(startQuiz);
    }

    return Scaffold(
      body: Container(child: screenWidget),
    );
  }
}
