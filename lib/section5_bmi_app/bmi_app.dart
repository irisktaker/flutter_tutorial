// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  _BMIAppState createState() => _BMIAppState();
}

double sliderValue = 10;

class _BMIAppState extends State<BMIApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildCard(
                      title: "Male",
                      icon: Icons.male,
                    ),
                    const SizedBox(width: 20),
                    buildCard(
                      title: "Female",
                      icon: Icons.female,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Height"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${sliderValue.toStringAsFixed(1)}",
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
                        value: sliderValue,
                        max: 220,
                        min: 50,
                        onChanged: (value) {
                          setState(() {});

                          sliderValue = value;
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
                child: Column(
                  children: [buildCard(title: 'test', icon: Icons.ac_unit)],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(flex: 1, child: Container())
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildCard({
    required String? title,
    required IconData? icon,
    void Function()? onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 120,
              ),
              Text(title!)
            ],
          ),
        ),
      ),
    );
  }
}
