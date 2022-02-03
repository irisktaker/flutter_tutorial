import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

// external : marquee: ^2.2.0
import 'package:marquee/marquee.dart';

class Ex_Marquee extends StatelessWidget {
  const Ex_Marquee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Marquee'),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: Card(
              color: Colors.orange[50],
              child: Marquee(
                text: 'Sales ends soon!!',
                blankSpace: 100,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Card(
              color: Colors.orange[50],
              child: Marquee(
                text: 'Sales ends soon!!',
                blankSpace: 50,
                scrollAxis: Axis.vertical,
                accelerationDuration: Duration(seconds: 3),
                pauseAfterRound: Duration(seconds: 4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
