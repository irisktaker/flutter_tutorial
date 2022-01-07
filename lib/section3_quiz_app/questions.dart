import 'package:flutter/material.dart';

import 'quiz_app.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
