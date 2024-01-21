import 'package:flutter/material.dart';
import 'package:lara_test/data/app_config.dart';

class QuizInstruction extends StatelessWidget {
  const QuizInstruction(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Read Before Starting The Quiz",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppConfig.instruction1,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppConfig.instruction2,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppConfig.instruction3,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppConfig.instruction4,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 45,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Test'))
        ],
      ),
    );
  }
}
