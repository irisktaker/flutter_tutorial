import 'package:flutter/material.dart';

import '../back_button.dart';
import 'package:form_field_validator/form_field_validator.dart';

/// add the below line to the pubspec.yaml
/// form_field_validator: ^1.1.0

class UseValidateOnTextFormField extends StatefulWidget {
  const UseValidateOnTextFormField({Key? key}) : super(key: key);

  @override
  _UseValidateOnTextFormFieldState createState() =>
      _UseValidateOnTextFormFieldState();
}

class _UseValidateOnTextFormFieldState
    extends State<UseValidateOnTextFormField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController? _validateController = TextEditingController();
  final TextEditingController? _controller = TextEditingController();
  final TextEditingController? _controller1 = TextEditingController();

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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _validateController,
                decoration: InputDecoration(
                  hintText: 'Is Validate!',
                  errorText: _validate ? 'field must not be empty' : null,
                ),
              ),
              TextFormField(
                controller: _controller,
                validator: RequiredValidator(errorText: "Required"),
                decoration: const InputDecoration(
                  hintText: 'Is Validate!',
                ),
              ),
              TextFormField(
                controller: _controller1,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Required";
                  }
                  if (val.length < 6) {
                    return "Password must be at least 6 characters long";
                  }
                  if (val.length > 20) {
                    return "Password must be less than 20 characters";
                  }
                  if (!val.contains(RegExp(r'[0-9]'))) {
                    return "Password must contain a number";
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Is Validate!',
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () => setState(() {
                  checkValidate();
                  _formKey.currentState!.validate();
                }),
                child: const Text('Check validate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
