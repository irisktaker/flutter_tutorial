import 'package:another_flushbar/flushbar.dart';
import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import '../build_btn.dart';

class E_FlushBar extends StatefulWidget {
  const E_FlushBar({Key? key}) : super(key: key);

  @override
  _E_FlushBarState createState() => _E_FlushBarState();
}

// https://pub.dev/packages/another_flushbar/install

class _E_FlushBarState extends State<E_FlushBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'FlashBar Demo'),
      body: Center(
        child: buildBtn("Flush Bar", onPress: () {
          Flushbar(
            icon: Icon(Icons.info, color: Colors.white),
            title: "Flush Bar",
            message: "This is a message",
            messageColor: Colors.white,
            messageSize: 14,
            // messageText: ,
            borderColor: Color(0xFF7750fa),
            mainButton: TextButton(
              child: Text("Close"),
              onPressed: () => setState(() => Navigator.pop(context)),
            ),
            flushbarPosition: FlushbarPosition.TOP,
            duration: Duration(seconds: 3),
          ).show(context);
        }),
      ),
    );
  }
}
