import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lara_quiz/widgets/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: GoogleFonts.lato(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style:
                      GoogleFonts.lato(color: Colors.cyanAccent, fontSize: 16),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
