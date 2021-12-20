import 'package:flutter/material.dart';
import 'info.dart';

class EListViewBuilder extends StatelessWidget {
  EListViewBuilder({Key? key}) : super(key: key);

  final List<Info> listOfInfo = [
    Info(name: 'Naser1', height: 167, date: DateTime.now()),
    Info(name: 'Naser2', height: 170, date: DateTime.now()),
    Info(name: 'Naser3', height: 172, date: DateTime.now()),
    Info(name: 'Naser4', height: 177, date: DateTime.now()),
    Info(name: 'Naser5', height: 187, date: DateTime.now()),
    Info(name: 'Naser1', height: 167, date: DateTime.now()),
    Info(name: 'Naser2', height: 170, date: DateTime.now()),
    Info(name: 'Naser3', height: 172, date: DateTime.now()),
    Info(name: 'Naser4', height: 177, date: DateTime.now()),
    Info(name: 'Naser5', height: 187, date: DateTime.now()),
    Info(name: 'Naser1', height: 167, date: DateTime.now()),
    Info(name: 'Naser2', height: 170, date: DateTime.now()),
    Info(name: 'Naser3', height: 172, date: DateTime.now()),
    Info(name: 'Naser4', height: 177, date: DateTime.now()),
    Info(name: 'Naser5', height: 187, date: DateTime.now()),
    Info(name: 'Naser1', height: 167, date: DateTime.now()),
    Info(name: 'Naser2', height: 170, date: DateTime.now()),
    Info(name: 'Naser3', height: 172, date: DateTime.now()),
    Info(name: 'Naser4', height: 177, date: DateTime.now()),
    Info(name: 'Naser5', height: 187, date: DateTime.now()),
  ]; // map function change this list of object to list of widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        foregroundColor: Colors.amber.shade200,
        backgroundColor: Colors.black,
        title: const Text('Map Function'),
      ),
      body: ListView.builder(
        itemCount: listOfInfo.length,
        itemBuilder: (context, index) => Card(
          color: Colors.amberAccent,
          elevation: 10,
          margin: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              margin: const EdgeInsets.all(6),
              color: Colors.yellow.shade300,
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: buildText(
                        text:
                            '${listOfInfo[index].name} :: ${listOfInfo[index].height}'),
                  ),
                  // const SizedBox(height: 6),
                ],
              ),
            ),
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
