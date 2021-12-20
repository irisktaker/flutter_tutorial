import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  final String? str2;

  const Screen2(this.str2, {Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(
        builder: (c) => const Screen1('passing data from screen 2')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.red,
            child: Text(
              "$str2",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
