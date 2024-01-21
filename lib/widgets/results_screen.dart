import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lara_test/data/questions.dart';
import 'package:lara_test/widgets/questions_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.questionAnswers, required this.restartQuiz});

  final void Function() restartQuiz;
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
    final summaryData = getSummaryData();
    final totalNumberOfQuestions = questions.length;
    final score = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //alternative to using center widget to center elements.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'You Answered $score out of $totalNumberOfQuestions questions correctly!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              QuestionSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                  onPressed: (restartQuiz),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart Quiz'))
            ]),
      ),
    );
  }
}
