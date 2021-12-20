import 'package:flutter/material.dart';

class EStackAndAlignment extends StatelessWidget {
  const EStackAndAlignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          // alignment: Alignment.center,
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(color: Colors.red),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(color: Colors.green),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
