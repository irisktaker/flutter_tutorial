import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class AsyncAwaitInFlutter extends StatefulWidget {
  const AsyncAwaitInFlutter({Key? key}) : super(key: key);

  @override
  State<AsyncAwaitInFlutter> createState() => _AsyncAwaitInFlutterState();
}

class _AsyncAwaitInFlutterState extends State<AsyncAwaitInFlutter> {
  Stream<int> getData() {
    Stream<int> myStream =
        Stream.periodic(const Duration(seconds: 2), (a) => a);
    return myStream;
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: '$i'),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click"),
          onPressed: () async {
            await for (final item in getData()) {
              setState(() {
                // i = (item < 10 ? item : 0);
                i = item < 10 ? item : 0;
              });
            }
          },
        ),
      ),
    );
  }
}
