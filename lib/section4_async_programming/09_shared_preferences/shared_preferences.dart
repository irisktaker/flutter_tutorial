// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:complete_dev_guide/section4_async_programming/09_shared_preferences/another_screen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ESharedPreferences extends StatefulWidget {
  const ESharedPreferences({Key? key}) : super(key: key);

  @override
  State<ESharedPreferences> createState() => _ESharedPreferencesState();
}

class _ESharedPreferencesState extends State<ESharedPreferences> {
//
// this function responsible of creating the state
// when the main screen called the initState will create , call the data
  @override
  initState() {
    super.initState();

    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context),
      body: Center(
        child: TextButton(
          child: const Text("Go to another screen"),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AnotherScreen())),
        ),
      ),
    );
  }

  // we set the data , now we need to receive data to another screen

  setData() async {
    // create object from SharedPreferences
    SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.setString('name', 'Naser');
    _pref.setInt('age', 27);
    _pref.setDouble('height', 1.67);
    _pref.setBool('developer', true);
    _pref.setStringList('skills', ['Flutter', 'Dart']);

    print("Data received");
  }
}
