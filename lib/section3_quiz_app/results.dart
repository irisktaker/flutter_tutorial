import 'package:flutter/material.dart';
import 'quiz_app.dart';

class Result extends StatelessWidget {
  final Function() reset;
  final int resultScore;

  Result(this.reset, this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 70) {
      resultText = "Your are awesome";
    } else if (resultScore >= 40) {
      resultText = "Your are good";
    } else {
      resultText = "You need to work harder";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Done!\n'
            'Result Score = $resultScore'
            '\n$resultPhrase',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: b,
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: reset,
            child: const Text(
              'Restart the quiz',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
