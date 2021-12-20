import 'package:flutter/material.dart';

class EExpanded extends StatelessWidget {
  const EExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expamded'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.cyan,
              child: const Text(
                "1",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.purpleAccent,
              child: const Text(
                "2",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.orangeAccent,
              child: const Text(
                "3",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
