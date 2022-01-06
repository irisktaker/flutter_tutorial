import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  final List<Map<String, Object>> questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ['Black', 'Green', 'Pink', 'Yellow'],
    },
    {
      "questionText": "What's your favorite animal?",
      'answers': ['Lion', 'Tiger', 'Wolf', 'Fox'],
    },
  ];

  void _answerQuestion() {
    if (_questionIndex == 1) {
      _questionIndex = -1;
    }
    setState(() {
      _questionIndex++;
    });
    print('Clicked');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz app'),
      ),
      body: Column(
        // objects from classes
        children: [
          Questions(questions[_questionIndex]['questionText'].toString()),
          Answers('Answer 1', _answerQuestion),
          Answers('Answer 2', _answerQuestion),
          Answers('Answer 3', _answerQuestion),
        ],
      ),
    );
  }
}
