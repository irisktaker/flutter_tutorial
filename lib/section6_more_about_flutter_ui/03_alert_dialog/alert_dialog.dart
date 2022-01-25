import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class EAlertDialog extends StatelessWidget {
  const EAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Center(
        child: TextButton(
          onPressed: () {
            buildDialog(context);
          },
          child: const Text("Alert Dialog"),
        ),
      ),
    );
  }

  void buildDialog(BuildContext context) {
    final AlertDialog alert = AlertDialog(
      title: Text("Alert Example"),
      content: SizedBox(
        height: 150,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF7750fa),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "This is a Dialog Text, Click Outside To Pop The Dialog",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 12),
            Divider(),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Close"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
    showDialog(
        // barrierDismissible: false, // to allow or not closing when click outside the box
        barrierColor: Colors.green.shade200,
        context: context,
        builder: (BuildContext ctx) {
          return alert;
        });
  }
}
