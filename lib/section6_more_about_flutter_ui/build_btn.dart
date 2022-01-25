
  import 'package:flutter/material.dart';

Container buildBtn(String text, {required void Function() onPress}) {
    return Container(
      width: 200,
      height: 44,
      child: TextButton(
        child: Text(text),
        onPressed: onPress,
      ),
    );
  }