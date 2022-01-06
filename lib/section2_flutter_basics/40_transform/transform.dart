import 'dart:math';

import 'package:flutter/material.dart';

class ETransform extends StatefulWidget {
  const ETransform({Key? key}) : super(key: key);

  @override
  _ETransformState createState() => _ETransformState();
}

double _angleValue = 0.0;
double _scaleValue = 0;
double _translateValue = 0;
// double _translateYValue = 0;

class _ETransformState extends State<ETransform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.rotate(
                // angle: pi / 3,
                angle: _angleValue * (pi / 180),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade300,
                  ),
                ),
              ),
              Transform.rotate(
                // angle: 45 * (pi / 180),
                angle: _angleValue * (pi / 180),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Angle Value: ${(_angleValue.round())}',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Slider(
            value: _angleValue,
            // required double
            onChanged: (double val) => setState(() => _angleValue = val),
            min: 0,
            max: 360,
            divisions: 100,
            label: 'angle value',
            activeColor: Colors.amber,
            inactiveColor: Colors.grey,
          ),
          Transform.scale(
            scale: _scaleValue,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
              ),
            ),
          ),
          Text(
            'Scale value: ${(_scaleValue.round())} \nthe value will multiple each time',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Slider(
            value: _scaleValue,
            onChanged: (double value) => setState(() => _scaleValue = value),
            min: 0,
            max: 8,
            divisions: 8,
            label: 'scale value',
            activeColor: Colors.amber,
            inactiveColor: Colors.grey,
          ),
          Transform.translate(
            // offset: Offset(_translateValue, _translateValue),
            offset: Offset(_translateValue, 0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
              ),
            ),
          ),
          Text(
            'Translate value: ${(_translateValue.round())}',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Slider(
            value: _translateValue,
            onChanged: (double value) =>
                setState(() => _translateValue = value),
            min: -100,
            max: 100,
            divisions: 10,
            label: 'translate X value',
            activeColor: Colors.amber,
            inactiveColor: Colors.grey,
          ),
          Transform(
            transform: Matrix4.skew(0.3, .02),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.yellow.shade300,
              ),
            ),
          ),
          const Text(
            'Matrix skew value',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
