// ignore_for_file: unnecessary_string_interpolations

import 'dart:math';

import 'package:complete_dev_guide/section5_bmi_app/result_screen.dart';
import 'package:flutter/material.dart';

class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  _BMIAppState createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  double heightValue = 120;
  double weight = 60;
  int age = 18;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCard1(context, 'male'),
                      const SizedBox(width: 20),
                      buildCard1(context, 'female'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Height"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${heightValue.toStringAsFixed(1)}",
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.white),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              "CM",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Slider(
                          value: heightValue,
                          min: 50,
                          max: 220,
                          onChanged: (value) {
                            setState(() {});

                            heightValue = value;
                            print(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      buildCard2(context, 'weight'),
                      const SizedBox(width: 20),
                      buildCard2(context, 'age'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text(
                        "Calculate",
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        double bmiResult = weight / pow(heightValue / 100, 2);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                result: bmiResult, isMale: isMale, age: age),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildCard1(BuildContext context, String type) {
    return Expanded(
      child: InkWell(
        onTap: () => setState(() => isMale = type == 'male' ? true : false),
        child: Container(
          decoration: BoxDecoration(
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.teal
                : Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                type == 'male' ? Icons.male : Icons.female,
                color: Colors.white,
                size: 90,
              ),
              Text(type == 'male' ? "Male" : "Female"),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildCard2(BuildContext context, String type) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(type == 'weight' ? 'Weight' : 'Age'),
            Text(
              type == 'weight' ? '${weight.toStringAsFixed(1)}' : '$age',
              style: const TextStyle(fontSize: 35, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.teal,
                  mini: true,
                  onPressed: () =>
                      setState(() => type == 'weight' ? weight -= 0.5 : age--),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                FloatingActionButton(
                  backgroundColor: Colors.teal,
                  mini: true,
                  onPressed: () =>
                      setState(() => type == 'weight' ? weight += 0.5 : age++),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
