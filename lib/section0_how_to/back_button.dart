import 'package:flutter/material.dart';

AppBar backButton(BuildContext context, {String text = 'How To Section? '}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.grey.shade700,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(text),
  );
}
