import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class OverflowSoftWrapSelectableText extends StatelessWidget {
  const OverflowSoftWrapSelectableText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: backButton(context, text: 'Overflow Soft Wrap Selectable Text'),
      body: DefaultTextStyle(
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SelectableText(
              'This is a selectable text, you can copy it',
              showCursor: true,
              cursorColor: Colors.yellow,
              cursorHeight: 5,
              toolbarOptions: ToolbarOptions(
                copy: true,
                selectAll: true,
              ),
            ),
            Divider(thickness: 3, color: Colors.red),
            testContainer(overflow: TextOverflow.clip),
            testContainer(overflow: TextOverflow.ellipsis),
            testContainer(overflow: TextOverflow.fade),
            testContainer(overflow: TextOverflow.visible),
            const SizedBox(height: 10),
            Divider(thickness: 3, color: Colors.red),
            const SizedBox(height: 10),
            testContainer(overflow: TextOverflow.clip, softWrap: false),
            testContainer(overflow: TextOverflow.ellipsis, softWrap: false),
            testContainer(overflow: TextOverflow.fade, softWrap: false),
            testContainer(overflow: TextOverflow.visible, softWrap: false),
          ],
        ),
      ),
    );
  }

  Container testContainer({
    TextOverflow? overflow,
    bool? softWrap = true,
  }) {
    return Container(
      height: 40,
      color: Colors.pink.shade200,
      child: Text(
        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
        overflow: overflow,
        softWrap: softWrap,
      ),
    );
  }
}
