import 'package:flutter/material.dart';
import 'package:gay/globalstate.dart';

class ResultScreen extends StatelessWidget {
  final Map<String, int> answers;

  const ResultScreen({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalScore = answers.values.fold(0, (sum, item) => sum + item);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your total score is:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '$totalScore',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Reset answers and navigate back to start or home
                globalState.answers.clear();
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Take Retest'),
            ),
          ],
        ),
      ),
    );
  }
}
