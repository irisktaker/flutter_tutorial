import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class ERadioListTile extends StatefulWidget {
  ERadioListTile({Key? key}) : super(key: key);

  @override
  State<ERadioListTile> createState() => _ERadioListTileState();
}

class _ERadioListTileState extends State<ERadioListTile> {
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Radio List Tile'),
      body: Container(
        color: _groupValue == 0 ? Colors.brown : Colors.green,
        child: Column(
          children: [
            radioListTile(0, 'Brown', 'Change BG to Brown'),
            radioListTile(1, 'Green', 'Change BG to Green'),
          ],
        ),
      ),
    );
  }

  RadioListTile<dynamic> radioListTile(int val, String txt, String subTxt) {
    return RadioListTile(
      value: val,
      groupValue: _groupValue,
      onChanged: (value) {
        setState(() {});
        _groupValue = value;
      },
      controlAffinity: ListTileControlAffinity.trailing,
      title: Text(txt),
      subtitle: Text(subTxt),
    );
  }
}
