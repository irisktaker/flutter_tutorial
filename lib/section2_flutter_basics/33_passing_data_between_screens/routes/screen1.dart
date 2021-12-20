import 'package:flutter/material.dart';

class Scr1 extends StatelessWidget {
  static const routeName = 'rout_name_screen_1';
  
  const Scr1({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/scr2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scr 1"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.green,
            child: const Text(
              "Screen 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
