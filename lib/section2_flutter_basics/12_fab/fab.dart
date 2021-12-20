import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({Key? key}) : super(key: key);

  /// ...
  /// floatingActionButton
  /// ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            // required
            onPressed: () {},
            // optional
            child: const Icon(Icons.add),
            tooltip: "Tool tip",
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            focusColor: Colors.yellow,
            hoverColor: Colors.green,
            splashColor: Colors.purpleAccent,
            heroTag: 'HeroTag',
            elevation: 10,
            focusElevation: 30,
            hoverElevation: 30,
            highlightElevation: 30,
            disabledElevation: 30,
            mouseCursor: MouseCursor.defer,
            mini: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                style: BorderStyle.solid,
                color: Colors.red,
                width: 5,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            focusNode: FocusNode(),
            autofocus: true,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            isExtended: true,
            enableFeedback: false,
          ),
        ],
      )),
      /// -----------
      ///
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // required
            onPressed: () {},
            // optional
            child: const Icon(Icons.add),
            tooltip: "Tool tip",
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            focusColor: Colors.yellow,
            hoverColor: Colors.green,
            splashColor: Colors.purpleAccent,
            heroTag: 'HeroTag',
            elevation: 10,
            focusElevation: 30,
            hoverElevation: 30,
            highlightElevation: 30,
            disabledElevation: 30,
            mouseCursor: MouseCursor.defer,
            mini: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                style: BorderStyle.solid,
                color: Colors.red,
                width: 5,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            focusNode: FocusNode(),
            autofocus: true,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            isExtended: true,
            enableFeedback: false,
          ),
          const SizedBox(height: 20),
          //
          FloatingActionButton.extended(
            // required
            onPressed: () {},
            // optional
            label: const Text("FloatingActionButton.extended"),
            icon: const Icon(Icons.remove),
            tooltip: "Tool tip",
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            focusColor: Colors.yellow,
            hoverColor: Colors.red,
            splashColor: Colors.tealAccent,
            heroTag: 'HeroTag',
            elevation: 10,
            focusElevation: 30,
            hoverElevation: 30,
            highlightElevation: 30,
            disabledElevation: 30,
            mouseCursor: MouseCursor.uncontrolled,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
              side: BorderSide(
                style: BorderStyle.solid,
                color: Colors.red,
                width: 5,
              ),
            ),
            clipBehavior: Clip.none,
            focusNode: FocusNode(),
            autofocus: false,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            isExtended: false,
            enableFeedback: false,
          ),
        ],
      ),
      /// -----------
      ///
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
