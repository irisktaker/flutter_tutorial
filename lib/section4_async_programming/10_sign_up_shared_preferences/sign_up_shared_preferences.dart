// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section4_async_programming/10_sign_up_shared_preferences/home_page_ex.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SignUpSharedPreferences extends StatefulWidget {
  const SignUpSharedPreferences({Key? key}) : super(key: key);

  @override
  State<SignUpSharedPreferences> createState() =>
      _SignUpSharedPreferencesState();
}

class _SignUpSharedPreferencesState extends State<SignUpSharedPreferences> {
  // String _email = '';
  // String _password = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Email'),
              controller: _emailController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: _passwordController,
            ),
            Builder(
              builder: (ctx) => ElevatedButton(
                child: const Text("Sign Up"),
                onPressed: () async {
                  // to save the data
                  SharedPreferences _pref =
                      await SharedPreferences.getInstance();

                  _pref.setString('e', _emailController.text);
                  _pref.setString('p', _passwordController.text);

                  // setState(() {
                  //   _email = _emailController.text;
                  //   _password = _passwordController.text;

                  //   print(_email);
                  //   print(_password);
                  // });
                  

                  Navigator.of(ctx).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomePageEx()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
