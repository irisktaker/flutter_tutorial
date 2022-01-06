import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final void Function() function;

  Answers(this.answerText, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
