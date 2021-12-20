// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class ETField extends StatelessWidget {
  ETField({Key? key, this.inputFormatters}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final List<TextInputFormatter>? inputFormatters;

  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            textFormField(
              controller: usernameController,
              type: TextInputType.name,
              prefix_icon: Icons.person,
              hint_text: 'Username',
            ),
            const SizedBox(height: 16.0),
            textFormField(
              controller: emailController,
              type: TextInputType.emailAddress,
              prefix_icon: Icons.email,
              hint_text: 'Email',
            ),
            const SizedBox(height: 16.0),
            textFormField(
              controller: passwordController,
              type: TextInputType.visiblePassword,
              prefix_icon: Icons.lock,
              hint_text: 'Password',
              secure: isPasswordVisible,
              suffix_icon: Icons.visibility,
              // onSuffixIconPress: 
            ),
            const SizedBox(height: 16.0),
            const TextField(

                ///
                /// TextField
                ///
                ///
                ),
          ],
        ),
      ),
    );
  }

  TextFormField textFormField({
    required TextEditingController? controller,
    bool autocorrect = false,
    List<TextInputFormatter>? textFormatter,
    required TextInputType? type,
    bool secure = false,
    int? max_length,
    Function(String)? onChange,
    Function(String)? onSubmit,
    required IconData? prefix_icon,
    IconData? suffix_icon,
    required String? hint_text,
    void Function()? onSuffixIconPress,
  }) {
    return TextFormField(
      controller: controller,
      autocorrect: autocorrect,
      inputFormatters: textFormatter,
      keyboardType: type,
      obscureText: secure,
      maxLength: max_length,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      style: const TextStyle(),
      decoration: InputDecoration(
        prefixIcon: Icon(prefix_icon),
        suffixIcon: IconButton(
          icon: Icon(suffix_icon),
          onPressed: onSuffixIconPress,
        ),
        counter: TextButton(onPressed: () {}, child: const Text("counter")),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
            width: 10,
            style: BorderStyle.solid,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        hintText: hint_text,
      ),
    );
  }
}

/// examples on inputFormatters: []
/// FilteringTextInputFormatter.deny(RegExp('[abF!.]')),
/// FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
/// FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
/// WhitelistingTextInputFormatter(RegExp("[a-z A-Z á-ú Á-Ú 0-9]")),
/// FilteringTextInputFormatter.allow(RegExp("[a-z A-Z á-ú Á-Ú 0-9]")),
/// FilteringTextInputFormatter.allow(RegExp(r'^ ?\d*')),
/// FilteringTextInputFormatter.deny(' '),
/// FilteringTextInputFormatter.digitsOnly,
