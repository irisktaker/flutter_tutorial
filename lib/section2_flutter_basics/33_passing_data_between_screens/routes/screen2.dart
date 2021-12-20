import 'package:flutter/material.dart';

class Scr2 extends StatelessWidget {
  static const routeName = 'rout_name_screen_2';

  const Scr2({Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/scr2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scr 2"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.red,
            child: const Text(
              "Screen 2",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
