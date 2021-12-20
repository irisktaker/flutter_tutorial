
import 'package:flutter/material.dart';

class EColumnRow extends StatelessWidget {
  const EColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            // enum CrossAxisAlignment.start
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
