import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildBtnWidget extends StatelessWidget {
  String text;
  Widget widget;

  BuildBtnWidget({Key? key, required this.text, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF7750fa),
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.centerLeft,
          child: TextButton(
            child: Text(text),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => widget),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
