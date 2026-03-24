import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data) {
        final isCorrectAnswer = data['user_answer'] == data['correct_answer'];

        return Row(
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCorrectAnswer ? Colors.green : Colors.red,
              ),
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data['question'] as String),
                  const SizedBox(width: 5),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
