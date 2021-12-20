import 'package:flutter/material.dart';

class EContainer extends StatelessWidget {
  const EContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(
              width: 2, color:
              Colors.black,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 60,
                offset: Offset(0, 10),
                spreadRadius: 100,
              ),
            ],
          ),
          child: const Text(
            "Container",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
