
import 'package:flutter/material.dart';

class ETextStyle extends StatelessWidget {
  const ETextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Center(
        child: Text(
            "Text Style",
            style: TextStyle(
              color: Colors.red,
              backgroundColor: const Color(0xFF832388),
              fontSize: 60,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              letterSpacing: 0.2,
              wordSpacing: -3.5,
              height: 3,
              shadows: const <Shadow>[
                // object
                Shadow(
                  color: Colors.green,
                  offset: Offset(-10, 3),
                  blurRadius: 5,
                ),
                Shadow(
                  color: Colors.blue,
                  offset: Offset(10, -3),
                  blurRadius: 5,
                ),
              ],
              textBaseline: TextBaseline.alphabetic,
              // decoration: TextDecoration.lineThrough,
              decoration: TextDecoration.combine(
                [
                  TextDecoration.lineThrough,
                  TextDecoration.overline,
                  TextDecoration.underline,
                ],
              ),
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 1.2,
          ),
        ),
      ),
    );
  }
}
