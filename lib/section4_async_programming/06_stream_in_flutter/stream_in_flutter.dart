// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

void main() {
  final stream = Stream.periodic(const Duration(microseconds: 500), (a) => a);
  final stream2 = stream.where((event) => event % 2 == 1);
  final sub = stream2.listen((event) => print(event));
  sub.onData((data) {
    data > 10 ? sub.cancel() : print(data);
  });
}

class StreamInFlutter extends StatelessWidget {
  const StreamInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 2), (a) => a),
      builder: (ctx, snapshot) {
        return Scaffold(
          appBar: backButton(
            context,
            // onError | snapshot.hasError , snapshot.error
            text: snapshot.hasData
                // && snapshot.data > 10
                ? "${snapshot.data}"
                : 'Stream Demo',
          ),
          body: Center(
            child: snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : const Text('Done'),
          ),
        );
      },
    );
  }
}
