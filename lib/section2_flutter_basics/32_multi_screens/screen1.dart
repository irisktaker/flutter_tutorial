import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}