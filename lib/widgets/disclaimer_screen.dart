import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lara_test/data/app_config.dart';
import 'package:lara_test/main.dart';

class DisclaimerScreen extends StatelessWidget {
  const DisclaimerScreen(this.quizInstruction, {super.key});

  final void Function() quizInstruction;
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
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(AppConfig.appDisclaimer,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(
            height: 70,
          ),
          OutlinedButton.icon(
              onPressed: () {
                quizInstruction();
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Proceed'))
        ],
      ),
    );
  }
}
