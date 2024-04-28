import 'package:flutter/material.dart';
import 'quiz_screen.dart'; // Import your quiz screen directly

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalTimeInSeconds;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalTimeInSeconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Total Time: ${totalTimeInSeconds}s',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigate to the quiz screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen(), // Replace QuizScreen with your actual quiz screen widget
                  ),
                );
              },
              child: Text('Start Again'),
            ),
          ],
        ),
      ),
    );
  }
}
