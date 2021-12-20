import 'package:flutter/material.dart';

class EColors extends StatelessWidget {
  const EColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer(
                // values form 0 - 255
                // a alpha value  | r is red | g is green | b is blue,
                color: const Color.fromARGB(100, 90, 140, 150),
              ),
              const SizedBox(height: 26.0),
              buildContainer(
                // opacity from 0 - 1
                // r is red | g is green | b is blue from 0 - 255
                color: const Color.fromRGBO(150, 100, 100, 0.3),
              ),
              const SizedBox(height: 26.0),
              buildContainer(
                // Color -> 0-9 X
                // -> 0-15 - (0-9) 10=a , 11=b, 12=c , 13=d , 14=e , 15=f
                // (0xFFFFFFFF) -> first FF == opacity
                //              -> FF FF FF (r g b)
                color: const Color(0xFF932323).withOpacity(0.4),
              ),
            ]
          ),
        ),
      ),
    );
  }

  Widget buildContainer({
    required Color color,
  }) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            width: 2,
            color: Colors.black,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // values form 0 - 255
              // a alpha value  | r is red | g is green | b is blue,
              // color: Color.fromARGB(100, 90, 140, 150),
              color: color,
              blurRadius: 60,
              offset: const Offset(0, 10),
              spreadRadius: 100,
            ),
          ],
        ),
        child: const Text(
          "Colors",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
