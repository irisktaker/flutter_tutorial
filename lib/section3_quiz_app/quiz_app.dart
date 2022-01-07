import 'package:complete_dev_guide/section3_quiz_app/quiz.dart';
import 'package:complete_dev_guide/section3_quiz_app/results.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

Color b = Colors.black;
Color w = Colors.white;

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  bool isSwitch = false;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print('Clicked');
    print(_totalScore);
    print(_questionIndex);
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Pink', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Wolf', 'score': 30},
        {'text': 'Fox', 'score': 40},
      ],
    },
    {
      "questionText": "What's your favorite language?",
      "answers": [
        {'text': 'English', 'score': 20},
        {'text': 'Chinese', 'score': 30},
        {'text': 'France', 'score': 40},
        {'text': 'Arabic', 'score': 10},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        title: Text(
          'Quiz app',
          style: TextStyle(color: w),
        ),
        actions: [
          Switch(
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch = value;

                  if (isSwitch == true) {
                    b = Colors.white;
                    w = Colors.black;
                  }
                  if (isSwitch == false) {
                    b = Colors.black;
                    w = Colors.white;
                  }

                  print(isSwitch);
                });
              })
        ],
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : Result(resetQuiz, _totalScore),
    );
  }
}
