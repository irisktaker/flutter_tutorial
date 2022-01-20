// ignore_for_file: avoid_print

import 'package:complete_dev_guide/main.dart';
import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class SignUpSharedPreferences extends StatefulWidget {
  const SignUpSharedPreferences({Key? key}) : super(key: key);

  @override
  State<SignUpSharedPreferences> createState() =>
      _SignUpSharedPreferencesState();
}

class _SignUpSharedPreferencesState extends State<SignUpSharedPreferences> {
  String _email = '';
  String _password = '';

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                onPressed: () {
                  setState(() {
                    _email = _emailController.text;
                    _password = _passwordController.text;

                    print(_email);
                    print(_password);
                  });
                  Navigator.of(ctx).pushReplacement(
                      MaterialPageRoute(builder: (_) => const MyApp()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
