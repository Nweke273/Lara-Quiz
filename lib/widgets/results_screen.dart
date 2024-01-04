import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.questionAnswers});
  final List<String> questionAnswers;

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
              const Text('List of answers and questions...'),
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
            ]),
      ),
    );
  }
}
