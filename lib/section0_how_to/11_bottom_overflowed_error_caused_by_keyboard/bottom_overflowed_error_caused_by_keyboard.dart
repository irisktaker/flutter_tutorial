import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import 'bottom_overflowed_error_caused_by_keyboard_bloc.dart';

class BottomOverflowedErrorCausedByTheKeyboard extends StatelessWidget {
  BottomOverflowedErrorCausedByTheKeyboard({Key? key}) : super(key: key);

  final _bloc = BottomOverflowedErrorCausedByTheKeyboardBloc();

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: backButton(context, text: 'Error Caused By Keyboard'),
      body: Container(
        color: Color.fromRGBO(36, 43, 47, 1),
        padding: const EdgeInsets.symmetric(horizontal: 43.0),
        child: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _bloc.buildFirstName(),
                _bloc.buildLastName(),
                _bloc.buildEmail(),
                _bloc.buildPassword(),
                _bloc.buildConfirmPassword(),
                _bloc.buildSignUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
