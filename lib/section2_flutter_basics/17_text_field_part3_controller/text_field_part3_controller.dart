// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class ETextField3 extends StatefulWidget {
  const ETextField3({Key? key, this.inputFormatters}) : super(key: key);

  final List<TextInputFormatter>? inputFormatters;

  @override
  State<ETextField3> createState() => _ETextField3State();
}

class _ETextField3State extends State<ETextField3> {
  /// Controllers
  TextEditingController usernameController = TextEditingController();
  String? strUsername;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color c1 = const Color(0xFF42A5F5);
  Color c2 = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
  Color c3 = const Color.fromARGB(255, 66, 165, 245);
  Color c4 = const Color.fromRGBO(66, 165, 245, 1.0);

  Color kBlackColor = Colors.black;
  Color kWhiteColor = Colors.white;
  Color kRedColor = const Color.fromRGBO(255, 0, 0, 1.0);
  Color kWGreyColor = Colors.grey;
  Color kPurpleColor = Colors.purpleAccent;
  Color kGreenColor = Colors.green.shade700;

  bool isPasswordVisible = true;

  Color scaffoldColor = Colors.black;
  Color floatingActionBtnColor = Colors.yellow.shade400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade400,
        foregroundColor: Colors.black,
        title: const Text('Text Field Part3'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              textFormField(
                controller:
                    usernameController, // any value the use will input will be assigned to this controller
                type: TextInputType.name,
                prefix_icon: Icons.person,
                hint_text: 'Username',
                labelText: strUsername ?? 'User',
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
                  suffix_icon: isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onSuffixIconPress: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  }),
              const SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Label Text'),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Hint Text',
                  hintStyle: const TextStyle(
                    color: Colors.yellow,
                  ),
                  fillColor: Colors.green.shade200,
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),

                ///
                /// TextField
                ///
                ///
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => setState(() {
                  strUsername = usernameController.text;
                }),
                child: const Text(
                  "Get Value",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  backgroundColor:
                      MaterialStateProperty.all(floatingActionBtnColor),
                  foregroundColor: MaterialStateProperty.all(scaffoldColor),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: floatingActionBtnColor,
        child: const Icon(
          Icons.colorize,
          color: Colors.black,
        ),
        onPressed: () {
          /// we can give a variable for all colors from the same value
          /// for ex: black color and we can change the color for all at once
          /// example on the ElevatedButton takes scaffoldColor
          setState(() {
            scaffoldColor =
                scaffoldColor == Colors.black ? Colors.white : Colors.black;
            floatingActionBtnColor =
                floatingActionBtnColor == Colors.yellow.shade400
                    ? Colors.green
                    : Colors.yellow.shade400;
          });
        },
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

    /// -------------
    int? maxLine = 1,
    TextAlign textAlign = TextAlign.start,
    String? preText,
    String? suffText,
    String? labelText,

    /// -------------
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
      maxLines: maxLine,
      textAlign: textAlign,

      ///
      /// style
      style: TextStyle(
        color: kGreenColor,
      ),

      ///
      /// decoration
      decoration: InputDecoration(
        prefixText: preText,
        suffixText: suffText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.red),

        /// ---------------------------
        /// how to get info from the user
        prefixIcon: Icon(
          prefix_icon,
          color: kWGreyColor,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            suffix_icon,
            color: kWGreyColor,
          ),
          onPressed: onSuffixIconPress,
          color: kWGreyColor,
        ),
        counter: TextButton(onPressed: () {}, child: const Text("counter")),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.yellow,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.cyan,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.pink,
            width: 10,
            style: BorderStyle.solid,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        hintText: hint_text,
        hintStyle: textBtnStyle(),
      ),
    );
  }

  TextStyle textBtnStyle() {
    return TextStyle(
      color: kWGreyColor,
    );
  }
}

/// examples on inputFormatters: []
/// FilteringTextInputFormatter.deny(RegExp('[abF!.]')),
/// FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
/// FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
/// WhitelistingTextInputFormatter(RegExp("[a-z A-Z ??-?? ??-?? 0-9]")),
/// FilteringTextInputFormatter.allow(RegExp("[a-z A-Z ??-?? ??-?? 0-9]")),
/// FilteringTextInputFormatter.allow(RegExp(r'^ ?\d*')),
/// FilteringTextInputFormatter.deny(' '),
/// FilteringTextInputFormatter.digitsOnly,
