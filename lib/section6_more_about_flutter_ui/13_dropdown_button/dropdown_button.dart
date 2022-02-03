import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class Ex_Dropdown extends StatefulWidget {
  const Ex_Dropdown({Key? key}) : super(key: key);

  @override
  State<Ex_Dropdown> createState() => _Ex_DropdownState();
}

class _Ex_DropdownState extends State<Ex_Dropdown> {
  String? selectedItem;

  List items = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Dropdown'),
      body: Center(
        child: DropdownButton(
          value: selectedItem,
          hint: Text("Select Item"),
          items: items.map((item) {
            return DropdownMenuItem(
              child: Text(item.toString()),
              value: items,
            );
          }).toList(),
          onChanged: (dynamic value) {
            setState(() => selectedItem = value);
          },
        ),
      ),
    );
  }
}
