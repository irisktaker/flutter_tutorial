// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class StreamExampleState extends State {
  void onPauseHandler() {
    print('on Pause');
  }

  late StreamController streamController;
  @override
  void initState() {
    super.initState();

    streamController = StreamController(
      onPause: onPauseHandler,
    );

    StreamSubscription? subscription;

    subscription = streamController.stream.listen((data) {
      print("DataReceived: " + data);

      // Add 5 seconds delay

      // It will call onPause function passed on StreamController constructor

      subscription!.pause(Future.delayed(const Duration(seconds: 5)));
    }, onDone: () {
      print("Task Done");
    }, onError: (error) {
      print("Some Error");
    });

    streamController.add("This a test data");

    streamController.addError(Exception('An exception'));

    streamController.add("This a test data 2");

    streamController.close(); //Streams must be closed when not needed

    streamController.add("This a test data 3");
  }

  @override
  void dispose() {
    streamController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Example'),
      ),
      body: const Center(child: Text("Woolha.com")),
    );
  }
}

class StreamExample extends StatefulWidget {
  const StreamExample({Key? key}) : super(key: key);

  @override
  StreamExampleState createState() => StreamExampleState();
}
