// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

main() {
  final Future<int> myFuture =
      Future.delayed(const Duration(seconds: 1), () => info(2));

  myFuture
      .then((value) => print(value))
      .catchError((onError) => print(onError));

  print(1);
}

int info(int a) {
  return a;
}

class FutureInFlutter extends StatelessWidget {
  const FutureInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3), () => info(2)),
        builder: (ctx, snapshot) {
          // snapshot is the return value from the Future,
          // like myFuture.then + myFuture.catchError
          return Scaffold(
            appBar: backButton(context,
                // onError | snapshot.hasError , snapshot.error
                text: snapshot.hasData ? "${snapshot.data}" : 'Future Demo'),
            body: Center(
              child: snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : const Text('Done'),
            ),
          );
        });
  }
}
