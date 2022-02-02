import 'package:flutter/material.dart';
import 'dart:ui';

class AvoidingOnScreenKeyboard extends StatefulWidget {
  const AvoidingOnScreenKeyboard({Key? key}) : super(key: key);

  @override
  State<AvoidingOnScreenKeyboard> createState() =>
      _AvoidingOnScreenKeyboardState();
}

class _AvoidingOnScreenKeyboardState extends State<AvoidingOnScreenKeyboard>
    with WidgetsBindingObserver {
  double _overlap = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Material(
              child: TextFormField(
                initialValue: "Edit me!",
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: _overlap),
                child: Placeholder(),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void didChangeMetrics() {
    final renderObject = context.findRenderObject();
    final renderBox = renderObject as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    final widgetRect = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      renderBox.size.width,
      renderBox.size.height,
    );
    final keyboardTopPixels =
        window.physicalSize.height - window.viewInsets.bottom;
    final keyboardTopPoints = keyboardTopPixels / window.devicePixelRatio;
    final overlap = widgetRect.bottom - keyboardTopPoints;
    if (overlap >= 0) {
      setState(() {
        _overlap = overlap;
      });
    }
  }
}
