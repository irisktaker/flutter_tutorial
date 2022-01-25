import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class E_SnackBar extends StatefulWidget {
  const E_SnackBar({Key? key}) : super(key: key);

  @override
  State<E_SnackBar> createState() => _E_SnackBarState();
}

class _E_SnackBarState extends State<E_SnackBar> {
  String appBarTitle = "SnackBar Demo";

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: appBarTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Show SnackBar"),
              onPressed: () {
                final SnackBar _snackBar = SnackBar(
                  content: Text("SnackBar"),
                );
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              },
            ),
            SizedBox(height: 16),
            TextButton(
              child: Text("Show SnackBar 2"),
              onPressed: () {
                setState(() => appBarTitle = "");

                SnackBar _snackBar = buildSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              },
            ),
          ],
        ),
      ),
    );
  }

  SnackBar buildSnackBar() {
    final SnackBar _snackBar = SnackBar(
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () => setState(() => appBarTitle = "SnackBar Demo"),
        textColor: Colors.white,
      ),
      content: Text("SnackBar With Some Customizing"),
      backgroundColor: Colors.pinkAccent,
      duration: Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
    return _snackBar;
  }
}
