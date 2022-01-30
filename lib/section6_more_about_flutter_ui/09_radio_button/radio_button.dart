import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int? _groupValue = 0;
  String? answerResult;
  Color? resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Radio Button'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),

              // Ex #1
              Text(
                "Guess the answer 2 + 2 = ??",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              radio(3, "Wrong Answer", Colors.redAccent),
              radio(4, "Correct Answer", Colors.green),
              radio(5, "Wrong Answer", Colors.redAccent),

              // Ex #2
              Text(
                "Guess the answer 2 + 2 = ??",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              radio2(3),
              radio2(4),
              radio2(5),
            ],
          ),
        ),
      ),
    );
  }

  // Ex #1
  dialog() {
    AlertDialog _dialog = AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          children: [
            Text(
              "$answerResult",
              style: TextStyle(color: resultColor),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("The Answer is: 4"),
            )
          ],
        ),
      ),
    );

    showDialog(context: context, builder: (context) => _dialog);
  }

  Row radio(int val, String answerRes, Color answerColor) {
    return Row(
      children: [
        Radio(
          value: val,
          groupValue: _groupValue,
          onChanged: (int? value) {
            setState(() {
              _groupValue = value;
              answerResult = answerRes;
              resultColor = answerColor;
              dialog();
            });
          },
        ),
        Text("$val"),
      ],
    );
  }

  // Ex #2
  dialog2() {
    AlertDialog _dialog = AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          children: [
            Text(
              "$answerResult",
              style: TextStyle(color: resultColor),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("The Answer is: 4"),
            )
          ],
        ),
      ),
    );

    showDialog(context: context, builder: (context) => _dialog);
  }

  Row radio2(int val) {
    return Row(
      children: [
        Radio(
          value: val,
          groupValue: _groupValue,
          onChanged: (int? value) {
            setState(() {
              _groupValue = value;
              answerResult = val == 4 ? "Correct Answer" : "Wrong Answer";
              resultColor = val == 4 ? Colors.green : Colors.redAccent;
              dialog2();
            });
          },
        ),
        Text("$val"),
      ],
    );
  }
}
