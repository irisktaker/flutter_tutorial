import 'package:flutter/material.dart';

class ESlider extends StatefulWidget {
  const ESlider({Key? key}) : super(key: key);

  @override
  _ESliderState createState() => _ESliderState();
}

class _ESliderState extends State<ESlider> {
  double _value = 0.0;
  double _radiusSize = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: _value,
            width: _value,
            decoration: BoxDecoration(
              color: Colors.yellow.shade300,
              borderRadius: BorderRadius.circular(_radiusSize),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Value= ${(_value).ceil()}'
            '\nchange the container size', // or round()
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Slider(
            value: _value,
            // required double
            onChanged: (double v) => setState(() => _value = v),
            min: 0,
            max: 200,
            divisions: 10,
            label: 'value',
          ),
          const SizedBox(height: 6),
          const Text(
            'Border Radius',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Slider(
              value: _radiusSize,
              onChanged: (value) => setState(() => _radiusSize = value),
              min: 0,
              max: 100,
              divisions: 10,
              activeColor: Colors.yellow.shade300,
              inactiveColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
