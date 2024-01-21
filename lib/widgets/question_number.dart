import 'package:flutter/material.dart';
import 'package:lara_test/main.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({required this.number, super.key});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Set the shape to circle
        color: kColorScheme
            .onPrimaryContainer, // Replace with your desired background color
      ),
      child: Text(
        number.toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold, color: kColorScheme.primaryContainer),
      ),
    );
  }
}
