import 'package:flutter/material.dart';
import 'package:lara_test/main.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(this.showDisclaimer, {Key? key}) : super(key: key);

  final void Function() showDisclaimer;
  final String heading = "Learn Laravel the fun way";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: kColorScheme.onPrimaryContainer,
          ),
          const SizedBox(height: 80),
          Text(
            heading,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: () {
                showDisclaimer();
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Get Started'))
        ],
      ),
    );
  }
}
