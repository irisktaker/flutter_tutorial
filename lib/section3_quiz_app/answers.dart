// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

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
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        onPressed: function,
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
