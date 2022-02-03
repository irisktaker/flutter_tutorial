import 'package:flutter/material.dart';

class BottomOverflowedErrorCausedByTheKeyboardBloc {
  final TextEditingController passwordController = TextEditingController();

  // build first name
  Widget buildFirstName() {
    return TextFormField(
      validator: (value) => value!.isEmpty ? "Username can't be empty" : null,
      style: TextStyle(
          color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
      decoration: _buildInputDecoration(
          "First name", 'assets/icons/construction-worker.png'),
    );
  }

  // build last name
  Widget buildLastName() {
    return Container(
        margin: const EdgeInsets.only(left: 40),
        child: TextFormField(
          validator: (value) =>
              value!.isEmpty ? "Last name cannot be empty" : null,
          style: TextStyle(
              color: Color.fromRGBO(252, 252, 252, 1),
              fontFamily: 'RadikalLight'),
          decoration: _buildInputDecoration("Last name", ''),
        ));
  }

  // build Email
  Widget buildEmail() {
    return TextFormField(
      validator: (value) => value!.isEmpty
          ? "Sorry, we do not recognize this email address"
          : null,
      style: TextStyle(
          color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
      decoration: _buildInputDecoration("Email", 'assets/icons/email.png'),
    );
  }

  // build password
  Widget buildPassword() {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      validator: (value) => value!.length <= 6
          ? "Password must be 6 or more characters in length"
          : null,
      style: TextStyle(
          color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
      decoration: _buildInputDecoration("Password", 'assets/icons/padlock.png'),
    );
  }

  bool isEmail(String value) {
    String regex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(regex);

    return value.isNotEmpty && regExp.hasMatch(value);
  }

  // build confirm password
  Widget buildConfirmPassword() {
    return Container(
      margin: const EdgeInsets.only(left: 40),
      child: TextFormField(
        obscureText: true,
        validator: (value) => value!.isEmpty ||
                (value.isNotEmpty && value != passwordController.text)
            ? "Must match the previous entry"
            : null,
        style: TextStyle(
          color: Color.fromRGBO(252, 252, 252, 1),
          fontFamily: 'RadikalLight',
        ),
        decoration: _buildInputDecoration("Confirm password", ''),
      ),
    );
  }

  // build sign up button
  Widget buildSignUpButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 43.0),
      width: MediaQuery.of(context).size.width * 0.62,
      height: 44,
      child: ElevatedButton(
        child: const Text(
          "Sign Up",
          style: TextStyle(
              color: Color.fromRGBO(40, 48, 52, 1),
              fontFamily: 'RadikalMedium',
              fontSize: 14),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(4.0),
        ),
        onPressed: () {
          // validateAndSubmit();
        },
      ),
    );
  }

  // creating a custom input decorator
  InputDecoration _buildInputDecoration(String hint, String iconPath) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Color.fromRGBO(252, 252, 252, 1)),
      icon: iconPath != ''
          ? Image.asset(
              iconPath,
              width: 40,
              height: 40,
            )
          : SizedBox(),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(252, 252, 252, 1),
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(151, 151, 151, 1),
        ),
      ),
      errorStyle: TextStyle(color: Color.fromRGBO(248, 218, 87, 1)),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(248, 218, 87, 1),
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(248, 218, 87, 1),
        ),
      ),
    );
  }
}
