import 'package:complete_dev_guide/section0_how_to/01_show_hide_password/show_hide_password.dart';
import 'package:complete_dev_guide/section0_how_to/02_use_validate/use_validate_on_text_form_field_2.dart';
import 'package:flutter/material.dart';

import '02_use_validate/use_validate_on_text_field.dart';
import '02_use_validate/use_validate_on_text_form_field.dart';
import 'back_button.dart';

class HowToSection extends StatelessWidget {
  const HowToSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildBtnWidget({
      required String? text,
      required Widget? widget,
    }) {
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextButton(
              child: Text(text!),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => widget!),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      );
    }

    return Scaffold(
      appBar: backButton(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Center(
            child: Column(
              children: [
                buildBtnWidget(
                    text: 'Show Hide Password',
                    widget: const ShowHidePassword()),
                buildBtnWidget(
                    text: 'Use Validate On TextField',
                    widget: const UseValidateOnTextField()),
                buildBtnWidget(
                    text: 'Use Validate On TextFormField',
                    widget: const UseValidateOnTextFormField()),
                buildBtnWidget(
                    text: 'Use Validate On TextFormField',
                    widget: const UseValidateOnTextFormFieldPart2()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
