import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class ShowHidePassword extends StatefulWidget {
  const ShowHidePassword({Key? key}) : super(key: key);

  @override
  _ShowHidePasswordState createState() => _ShowHidePasswordState();
}

class _ShowHidePasswordState extends State<ShowHidePassword> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: TextField(
            obscureText: _isHidden,
            decoration: InputDecoration(
              hintText: 'password',
              suffixIcon: IconButton(
                onPressed: () => setState(() => _isHidden = !_isHidden),
                icon: _isHidden
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
