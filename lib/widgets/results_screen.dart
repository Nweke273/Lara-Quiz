import 'package:flutter/material.dart';
import 'package:lara_quiz/data/questions.dart';
import 'package:lara_quiz/widgets/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.questionAnswers});

  final List<String> questionAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < questionAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': questionAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //alternative to using center widget to center elements.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text(questionAnswers[0]),
              const SizedBox(height: 30),
              QuestionSummary(getSummaryData()),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
            ]),
      ),
    );
  }
}
