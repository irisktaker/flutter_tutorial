import 'package:flutter/material.dart';
import 'info.dart';

class EMapFunction extends StatelessWidget {
  EMapFunction({Key? key}) : super(key: key);

  final info1 = Info(name: 'Naser1', height: 167, date: DateTime.now());
  final info2 = Info(name: 'Naser2', height: 170, date: DateTime.now());
  final info3 = Info(name: 'Naser3', height: 172, date: DateTime.now());
  final info4 = Info(name: 'Naser4', height: 177, date: DateTime.now());
  final info5 = Info(name: 'Naser5', height: 187, date: DateTime.now());

  /// Change these objects into a list
  final List<Info> listOfInfo = [
    Info(name: 'Naser1', height: 167, date: DateTime.now()),
    Info(name: 'Naser2', height: 170, date: DateTime.now()),
    Info(name: 'Naser3', height: 172, date: DateTime.now()),
    Info(name: 'Naser4', height: 177, date: DateTime.now()),
    Info(name: 'Naser5', height: 187, date: DateTime.now()),
  ]; // map function change this list of object to list of widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Map Function',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildText(text: '${info1.name} :: ${info1.height}'),
              const SizedBox(height: 6),
              buildText(text: '${info2.name} :: ${info2.height}'),
              const SizedBox(height: 6),
              buildText(text: '${info3.name} :: ${info3.height}'),
              const SizedBox(height: 6),
              buildText(text: '${info4.name} :: ${info4.height}'),
              const SizedBox(height: 6),
              buildText(text: '${info5.name} :: ${info5.height}'),
              const SizedBox(height: 12),
              const Divider(thickness: 10, height: 3),
              const SizedBox(height: 12),
              // map function change the list of object to list of widgets
              ...listOfInfo.map((e) {
                return Column(
                  children: [
                    buildText(text: '${e.name} :: ${e.height}'),
                    const SizedBox(height: 6),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Text buildText({
    required String? text,
  }) {
    return Text(
      text!,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
      ),
    );
  }
}
