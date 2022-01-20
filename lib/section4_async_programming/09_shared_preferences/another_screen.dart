import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

String _name = "";
int _age = 0;
double _height = 0;
bool _developer = false;
List<String> _skills = ["", ""];

class _AnotherScreenState extends State<AnotherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Another Screen'),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: " + _name),
              Text("Age: $_age"),
              Text("Height: $_height"),
              Text("Developer: $_developer"),
              Text("Skills #1: " + _skills[0]),
              Text("Skills #2:" + _skills[1]),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Get data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
