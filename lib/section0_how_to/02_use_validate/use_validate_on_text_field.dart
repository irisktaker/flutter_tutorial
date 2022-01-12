import 'package:flutter/material.dart';

import '../back_button.dart';

class UseValidateOnTextField extends StatefulWidget {
  const UseValidateOnTextField({Key? key}) : super(key: key);

  @override
  _UseValidateOnTextFieldState createState() => _UseValidateOnTextFieldState();
}

class _UseValidateOnTextFieldState extends State<UseValidateOnTextField> {
  final TextEditingController? _validateController = TextEditingController();
  bool _validate = false;
  bool? checkValidate() {
    _validateController!.text.isEmpty ? _validate = true : _validate = false;
  }

  @override
  void dispose() {
    _validateController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _validateController,
              decoration: InputDecoration(
                hintText: 'Is Validate!',
                errorText: _validate ? 'field must not be empty' : null,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => setState(() => checkValidate()),
              child: const Text('Check validate'),
            ),
          ],
        ),
      ),
    );
  }
}
