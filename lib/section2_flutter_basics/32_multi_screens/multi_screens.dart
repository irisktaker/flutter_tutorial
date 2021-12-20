import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';

class EMultiScreens extends StatelessWidget {
  const EMultiScreens({Key? key}) : super(key: key);
  /// ------------>>> or add String for the name of the page 
  /// and maybe use switch
  /// and use pushReplacement
  void selectScreen(BuildContext ctx, int numberOfScreen) {
    Navigator.of(ctx)
        //
        .push(MaterialPageRoute(builder: (_) {
      if (numberOfScreen == 1) {
        return const Screen1();
      } else if (numberOfScreen == 2) {
        return const Screen2();
      }
      return const EMultiScreens();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => selectScreen(context, 1),
              child: const Text(
                "Go to screen 1",
                style: TextStyle(fontSize: 24),
              ),
            ),
            InkWell(
              onTap: () => selectScreen(context, 2),
              child: const Text(
                "Go to screen 2",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
