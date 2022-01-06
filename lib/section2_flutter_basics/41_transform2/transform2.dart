import 'dart:math';

import 'package:flutter/material.dart';

class Transform2 extends StatefulWidget {
  const Transform2({Key? key}) : super(key: key);

  @override
  _Transform2State createState() => _Transform2State();
}

class _Transform2State extends State<Transform2> {
  double _value = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            // ..
            transform: Matrix4.rotationZ(-20 * (pi / 180))
              ..translate(0.0, _value, 0.0),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.deepOrange.shade300,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            // max: 2 * pi,
            max: 180,
          ),
        ],
      ),
    );
  }
}
