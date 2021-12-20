import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  final String? str1;

  const Screen1(this.str1, {Key? key}) : super(key: key);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(
        builder: (c) => const Screen2('passing data from screen 1')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.green,
            child: Text(
              "$str1",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
