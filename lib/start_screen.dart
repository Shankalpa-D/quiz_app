import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 60, 9, 214),
            const Color.fromARGB(255, 20, 28, 100),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 280,
              color: const Color.fromARGB(200, 255, 255, 255),
            ),

            const SizedBox(height: 80),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_circle_right_outlined),
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              label: Text("Start Quiz"),
            ),

            Text(
              "Challenge yourself on this quiz app",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
