import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class Ex_ColorPicker extends StatelessWidget {
  const Ex_ColorPicker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context,text: 'Color Picker'),
      body: Center(),
    );
  }
}