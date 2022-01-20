import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section4_async_programming/09_shared_preferences/another_screen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences extends StatelessWidget {
  const SharedPreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Center(
        child: TextButton(
          child: const Text("Go to another screen"),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AnotherScreen())),
        ),
      ),
    );
  }
}
