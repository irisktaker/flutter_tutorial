import 'package:flutter/material.dart';

class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  _BMIAppState createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
    );
  }
}
